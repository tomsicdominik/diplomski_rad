package main

import (
	"context"
	"log"
	"strings"
	"time"

	mongo "go_server/mongodb"
	pb "go_server/proto"

	"google.golang.org/grpc/peer"
)

func (*Server) RBPairing(ctx context.Context, in *pb.RBPairingRequest) (*pb.RBPairingResponse, error) {
	p, _ := peer.FromContext(ctx)
	ip := p.Addr.String()
	in.Ip = strings.Split(ip, ":")[0]
	in.TimestampRecieved = time.Now().Unix()
	in.Status = "unpaired"

	log.Printf("RBPairing with %v\n", in)

	mongoClient := mongo.NewClient()
	id, err := mongoClient.SaveRBPairingRequest(in)

	log.Println(id)
	if err != nil {
		return &pb.RBPairingResponse{Status: "NOK", Id: ""}, nil
	}

	status := "unpaired"
	var fromDb *pb.RBPairingRequest
	for in.TimestampRecieved+300 > time.Now().Unix() {
		fromDb, err = mongoClient.GetRBPairingRequestById(id)
		if err != nil {
			return &pb.RBPairingResponse{Status: "NOK", Id: ""}, nil
		}

		select {
		case <-ctx.Done():
			fromDb.Status = "failed"
			mongoClient.UpdateRBPairingRequestById(id, fromDb)
			log.Println("Context is done: ", ctx.Err())
			return nil, ctx.Err()
		default:
		}

		if fromDb.Status == "unpaired" {
			time.Sleep(2 * time.Second)
			continue
		} else {
			status = fromDb.Status
			break
		}

	}
	if status == "pending" {
		for fromDb.TimestampPending+500 < time.Now().Unix() {
			fromDb, err = mongoClient.GetRBPairingRequestById(id)
			if err != nil {
				return &pb.RBPairingResponse{Status: "NOK", Id: ""}, nil
			}
			select {
			case <-ctx.Done():
				fromDb.Status = "failed"
				mongoClient.UpdateRBPairingRequestById(id, fromDb)
				log.Println("Context is done: ", ctx.Err())
				return nil, ctx.Err()
			default:
			}
			if fromDb.Status != "app_paired" {
				time.Sleep(2 * time.Second)
				continue
			} else {
				status = fromDb.Status
				break
			}

		}
	}
	if status == "app_paired" {
		fromDb.Status = "paired"
		mongoClient.UpdateRBPairingRequestById(id, fromDb)
		return &pb.RBPairingResponse{Status: "OK", Id: fromDb.DeviceId}, nil
	}
	fromDb.Status = "failed"
	mongoClient.UpdateRBPairingRequestById(id, fromDb)
	return &pb.RBPairingResponse{Status: "NOK", Id: ""}, nil
}
