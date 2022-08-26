package main

import (
	"context"
	"log"
	"time"

	mongo "go_server/mongodb"
	pb "go_server/proto"
)

func (*Server) AppPairing(ctx context.Context, in *pb.AppPairingRequest) (*pb.AppPairingResponse, error) {
	log.Printf("AppPairing with %v\n", in)

	mongoClient := mongo.NewClient()

	fromDb, err := mongoClient.GetRBPairingRequestById(in.Device.Id)
	if err != nil {
		return &pb.AppPairingResponse{Status: "NOK"}, nil
	}
	fromDb.Status = in.Device.Status
	fromDb.DeviceId = in.Device.Id
	mongoClient.UpdateRBPairingRequestById(in.Device.Id, fromDb)

	for i := 0; i < 10; i++ {
		fromDb, err = mongoClient.GetRBPairingRequestById(in.Device.Id)
		if err != nil {
			return &pb.AppPairingResponse{Status: "NOK"}, nil
		}

		if fromDb.Status != "paired" {
			time.Sleep(1 * time.Second)
			continue
		} else {
			generateInitialAnimation(in.Device)
			in.Device.Status = "paired"
			in.Device.User = in.UserId
			in.Device.Active = false
			mongoClient.SaveDevice(in.Device)
			mongoClient.SaveDeviceControl(&pb.DeviceControl{Id: in.Device.Id, State: "sensor", Colour: &pb.RGB{Red: 180, Green: 180, Blue: 180}, New: true})
			return &pb.AppPairingResponse{Status: "OK"}, nil
		}

	}

	return &pb.AppPairingResponse{Status: "NOK"}, nil

}

func (*Server) UnpairDevice(ctx context.Context, in *pb.Device) (*pb.AppPairingResponse, error) {
	log.Printf("AppPairing with %v\n", in)

	mongoClient := mongo.NewClient()

	fromDb, err := mongoClient.GetDevice(in.Id)
	if err != nil {
		return &pb.AppPairingResponse{Status: "NOK"}, nil
	}
	fromDb.Status = "removed"
	err = mongoClient.ReplaceDevice(fromDb)
	if err != nil {
		return &pb.AppPairingResponse{Status: "NOK"}, nil
	}

	return &pb.AppPairingResponse{Status: "OK"}, nil

}
