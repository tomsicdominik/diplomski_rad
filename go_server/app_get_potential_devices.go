package main

import (
	"context"
	mongo "go_server/mongodb"
	pb "go_server/proto"
	"log"
	"strings"
	"time"

	"google.golang.org/grpc/peer"
)

func (*Server) AppGetPotentialDevices(ctx context.Context, in *pb.AppGetDevicesRequest) (*pb.AppGetDevicesResponse, error) {
	p, _ := peer.FromContext(ctx)
	ip := p.Addr.String()
	in.Ip = strings.Split(ip, ":")[0]

	log.Printf("AppGetPotentialDevices with %v\n", in)

	mongoClient := mongo.NewClient()
	fromDb, err := mongoClient.GetUnpairedRBPairingRequestsByIp(in.Ip, time.Now().Unix()-290)
	if err != nil {
		return &pb.AppGetDevicesResponse{}, nil
	}
	var devices []*pb.Device

	for k, d := range fromDb {
		d.Status = "pending"
		mongoClient.UpdateRBPairingRequestById(k, d)
		devices = append(devices, &pb.Device{Id: k, Name: "new Device", Type: d.Type, PairingId: k, Rows: d.Rows, LedsPerRow: d.LedsPerRow})
	}
	log.Printf("AppGetPotentialDevices devices %v\n", devices)

	return &pb.AppGetDevicesResponse{Devices: devices}, nil

}
