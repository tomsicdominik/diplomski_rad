package main

import (
	"context"
	mongo "go_server/mongodb"
	pb "go_server/proto"
	"log"
)

func (*Server) GetAnimation(ctx context.Context, in *pb.GetAnimationRequest) (*pb.GetAnimationResponse, error) {

	log.Printf("GetAnimation with %v\n", in)

	mongoClient := mongo.NewClient()
	fromDb, err := mongoClient.GetAnimation(in.DeviceId)
	if err != nil {
		return &pb.GetAnimationResponse{Status: "NOK"}, nil
	}

	return &pb.GetAnimationResponse{Status: "OK", Animation: fromDb}, nil

}
