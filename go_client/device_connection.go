package main

import (
	"context"
	"encoding/json"
	"io"
	"io/ioutil"
	"log"

	pb "go_client/proto"
)

func getDeviceConnection(c pb.DodoledServiceClient, id string) string {
	log.Println("Device Connection was invoked")

	stream, err := c.DeviceConnection(context.Background(), &pb.DeviceConnectionRequest{Id: id})

	if err != nil {
		log.Printf("Device Connection: disconnected\n")
		return "disconnected"
	}

	for {
		msg, err := stream.Recv()

		if err == io.EOF {
			break
		}

		if err != nil {
			log.Printf("Device Connection: disconnected\n")
			return "disconnected"
		}

		if msg.Action == "removed" {
			log.Printf("Device Connection: unpaired device\n")
			return "removed"
		}

		if msg.Action == "control" {
			go func(dc *pb.DeviceControl) {
				file, _ := json.MarshalIndent(msg.DeviceControl, "", " ")
				_ = ioutil.WriteFile("control.json", file, 0644)
				writeToPython("control")
			}(msg.DeviceControl)
		}

		if msg.Action == "animation" {
			go func(dc *pb.Animation) {
				file, _ := json.MarshalIndent(msg.Animation, "", " ")
				_ = ioutil.WriteFile("animation.json", file, 0644)
				writeToPython("animation")
			}(msg.Animation)
		}

		log.Printf("Device Connection: %s\n", msg.Action)
	}
	return "disconnected"
}
