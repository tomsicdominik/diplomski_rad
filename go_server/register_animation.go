package main

import (
	"context"
	pb "go_server/proto"
	"log"
)

func (*Server) RegisterAnimation(ctx context.Context, in *pb.Animation) (*pb.RegisterAnimationResponse, error) {

	log.Printf("RegisterAnimation\n")

	err := registerAnimation(in)
	if err != nil {
		return &pb.RegisterAnimationResponse{Status: "NOK"}, nil
	}

	return &pb.RegisterAnimationResponse{Status: "OK"}, nil

}
