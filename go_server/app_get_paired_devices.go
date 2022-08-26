package main

import (
	"context"
	mongo "go_server/mongodb"
	pb "go_server/proto"
	"log"
)

func (*Server) AppGetPairedDevices(ctx context.Context, in *pb.AppGetDevicesRequest) (*pb.AppGetDevicesResponse, error) {

	log.Printf("AppGetPairedDevices with %v\n", in)

	mongoClient := mongo.NewClient()
	fromDb, err := mongoClient.GetPairedDevices(in.User)
	if err != nil {
		return &pb.AppGetDevicesResponse{}, nil
	}
	log.Printf("AppGetPotentialDevices devices %v\n", fromDb)
	return &pb.AppGetDevicesResponse{Devices: fromDb}, nil

}
