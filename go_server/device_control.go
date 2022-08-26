package main

import (
	"context"
	mongo "go_server/mongodb"
	pb "go_server/proto"
	"log"
)

func (*Server) GetDeviceControl(ctx context.Context, in *pb.GetDeviceControlRequest) (*pb.GetDeviceControlResponse, error) {

	log.Printf("GetDeviceControl with %v\n", in)

	mongoClient := mongo.NewClient()
	fromDb, err := mongoClient.GetDeviceControl(in.DeviceId)
	if err != nil {
		return &pb.GetDeviceControlResponse{Status: "NOK"}, nil
	}

	return &pb.GetDeviceControlResponse{Status: "OK", DeviceControl: fromDb}, nil

}

func (*Server) SetDeviceControl(ctx context.Context, in *pb.SetDeviceControlRequest) (*pb.SetDeviceControlResponse, error) {

	log.Printf("GetDeviceControl with %v\n", in)

	mongoClient := mongo.NewClient()
	err := mongoClient.ReplaceDeviceControl(in.DeviceControl)
	if err != nil {
		return &pb.SetDeviceControlResponse{Status: "NOK"}, nil
	}

	return &pb.SetDeviceControlResponse{Status: "OK"}, nil

}
