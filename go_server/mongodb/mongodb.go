// Package mongodb provides CRUD operations for mongodb in mcSim.
package mongodb

import (
	"context"
	"fmt"
	"log"
	"time"

	pb "go_server/proto"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type Config struct {
	Server   string
	User     string
	Password string
}

type Client struct {
	config Config
}

func NewClient() *Client {
	return &Client{config: Config{Server: "dodoled.co:27017", User: "superuser", Password: "superuser"}}
}

// nolint:unparam
func (m *Client) prepareConnection(dbName, collectionName string) (
	context.Context, *mongo.Collection, context.CancelFunc, *mongo.Client, error) {
	cfg := m.config
	uri := fmt.Sprintf("mongodb://%s:%s@%s/?authSource=admin", cfg.User, cfg.Password, cfg.Server)

	client, err := mongo.NewClient(options.Client().ApplyURI(uri))
	if err != nil {
		log.Println(err)

		return nil, nil, nil, nil, fmt.Errorf("failed to connect to DB: %w", err)
	}

	t := 10 * time.Second
	ctx, cancel := context.WithTimeout(context.Background(), t)

	err = client.Connect(ctx)
	if err != nil {
		log.Println(err)
		cancel()

		return nil, nil, nil, nil, fmt.Errorf("failed to connect to DB: %w", err)
	}

	collection := client.Database(dbName).Collection(collectionName)

	return ctx, collection, cancel, client, nil
}

func closeConnection(ctx context.Context, cancel context.CancelFunc, client *mongo.Client) {
	cancel()

	if err := client.Disconnect(ctx); err != nil {
		fmt.Println(err)
	}
}

func (m *Client) SaveRBPairingRequest(req *pb.RBPairingRequest) (string, error) {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "RBPairing")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return "", err
	}

	result, err := collection.InsertOne(ctx, req)
	if err != nil {
		return "", fmt.Errorf("failed to insert RBPairingRequest: %w", err)
	}
	if oid, ok := result.InsertedID.(primitive.ObjectID); ok {
		s := oid.String()
		return s[10 : len(s)-2], nil
	} else {
		return "", nil
	}
}

func (m *Client) GetRBPairingRequestById(id string) (*pb.RBPairingRequest, error) {
	var pairingReq pb.RBPairingRequest

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "RBPairing")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return &pairingReq, err
	}

	objectId, err := primitive.ObjectIDFromHex(id)
	if err != nil {
		log.Println("Invalid id")
		return &pairingReq, err
	}

	if err = collection.FindOne(ctx, bson.M{"_id": objectId}).Decode(&pairingReq); err != nil {
		return &pairingReq, fmt.Errorf("failed to get RBPairingRequest by ID: %w", err)
	}

	return &pairingReq, nil
}

func (m *Client) GetUnpairedRBPairingRequestsByIp(ip string, time int64) (map[string]*pb.RBPairingRequest, error) {

	pairingReqs := make(map[string]*pb.RBPairingRequest)

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "RBPairing")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return pairingReqs, err
	}

	pipeline := []bson.M{
		{"$match": bson.M{"ip": ip, "status": "unpaired", "timestamprecieved": bson.M{"$gt": time}}},
	}

	cursor, err := collection.Aggregate(ctx, pipeline)
	if err != nil {
		log.Println("%w", err)
		return pairingReqs, fmt.Errorf("failed to get RBPairingRequest by IP: %w", err)
	}

	for cursor.Next(ctx) {
		var oneReq pb.RBPairingRequest
		var mongoID ObjectID
		cursor.Decode(&oneReq)
		cursor.Decode(&mongoID)
		pairingReqs[mongoID.ID] = &oneReq

	}

	pipeline = []bson.M{
		{"$match": bson.M{"ip": ip, "status": "pending", "timestamprecieved": bson.M{"$gt": time}}},
	}

	cursor, err = collection.Aggregate(ctx, pipeline)
	if err != nil {
		log.Println("%w", err)
		return pairingReqs, fmt.Errorf("failed to get RBPairingRequest by IP: %w", err)
	}

	for cursor.Next(ctx) {
		var oneReq pb.RBPairingRequest
		var mongoID ObjectID
		cursor.Decode(&oneReq)
		cursor.Decode(&mongoID)
		pairingReqs[mongoID.ID] = &oneReq

	}

	return pairingReqs, nil
}

func (m *Client) UpdateRBPairingRequestById(id string, req *pb.RBPairingRequest) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "RBPairing")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	objectId, err := primitive.ObjectIDFromHex(id)
	if err != nil {
		log.Println("Invalid id")
		return err
	}

	_, err = collection.ReplaceOne(ctx, bson.M{"_id": objectId}, req)

	if err != nil {
		log.Println("%w", err)
		return fmt.Errorf("failed to update RBPairingRequest by ID: %w", err)
	}

	return nil
}

func (m *Client) SaveDevice(d *pb.Device) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Devices")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	_, err = collection.InsertOne(ctx, d)
	if err != nil {
		return fmt.Errorf("failed to insert Device: %w", err)
	}
	return nil
}

func (m *Client) GetPairedDevices(user string) ([]*pb.Device, error) {
	var pairedDevices []*pb.Device

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Devices")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return pairedDevices, err
	}

	pipeline := []bson.M{
		{"$match": bson.M{"user": user, "status": "paired"}},
	}

	cursor, err := collection.Aggregate(ctx, pipeline)
	if err != nil {
		log.Println("%w", err)
		return pairedDevices, fmt.Errorf("failed to get PairedDevices: %w", err)
	}

	for cursor.Next(ctx) {
		var oneDevice pb.Device
		cursor.Decode(&oneDevice)
		pairedDevices = append(pairedDevices, &oneDevice)
	}
	return pairedDevices, nil
}

func (m *Client) GetDevice(deviceId string) (*pb.Device, error) {
	var d pb.Device

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Devices")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return &d, err
	}

	if err = collection.FindOne(ctx, bson.M{"id": deviceId}).Decode(&d); err != nil {
		return &d, fmt.Errorf("failed to get Device by ID: %w", err)
	}

	return &d, nil
}

func (m *Client) ReplaceDevice(d *pb.Device) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Devices")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	_, err = collection.ReplaceOne(ctx, bson.M{"id": d.Id}, d)

	if err != nil {
		return fmt.Errorf("failed to replace Device: %w", err)
	}
	return nil

}

func (m *Client) GetDeviceControl(deviceId string) (*pb.DeviceControl, error) {
	var d pb.DeviceControl

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "DeviceControl")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return &d, err
	}

	if err = collection.FindOne(ctx, bson.M{"id": deviceId}).Decode(&d); err != nil {
		return &d, fmt.Errorf("failed to get DeviceControl by ID: %w", err)
	}

	return &d, nil
}

func (m *Client) SaveDeviceControl(d *pb.DeviceControl) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "DeviceControl")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	// nolint:exhaustruct
	_, err = collection.InsertOne(ctx, d)

	if err != nil {
		return fmt.Errorf("failed to replace DeviceControl: %w", err)
	}
	return nil

}

func (m *Client) ReplaceDeviceControl(d *pb.DeviceControl) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "DeviceControl")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	// nolint:exhaustruct
	_, err = collection.ReplaceOne(ctx, bson.M{"id": d.Id}, d)

	if err != nil {
		return fmt.Errorf("failed to replace DeviceControl: %w", err)
	}
	return nil

}

func (m *Client) SaveAnimation(d *pb.Animation) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Animations")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	// nolint:exhaustruct

	_, err = collection.InsertOne(ctx, d)
	if err != nil {
		return fmt.Errorf("failed to insert Animation: %w", err)
	}
	return nil

}

func (m *Client) ReplaceAnimation(d *pb.Animation) error {
	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Animations")
	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return err
	}

	// nolint:exhaustruct
	_, err = collection.ReplaceOne(ctx, bson.M{"deviceid": d.DeviceId}, d)

	if err != nil {
		return fmt.Errorf("failed to replace Animation: %w", err)
	}
	return nil

}

func (m *Client) GetAnimation(deviceId string) (*pb.Animation, error) {
	var a pb.Animation

	ctx, collection, cancel, client, err := m.prepareConnection("dodoled", "Animations")

	if err == nil {
		defer closeConnection(ctx, cancel, client)
	} else {
		return &a, err
	}

	if err = collection.FindOne(ctx, bson.M{"deviceid": deviceId}).Decode(&a); err != nil {
		return &a, fmt.Errorf("failed to get Animation by Device ID: %w", err)
	}

	return &a, nil
}
