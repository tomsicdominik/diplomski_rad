package main

import (
	mongo "go_server/mongodb"
	pb "go_server/proto"
	"log"
	"time"
)

func (*Server) DeviceConnection(in *pb.DeviceConnectionRequest, stream pb.DodoledService_DeviceConnectionServer) error {
	mongoClient := mongo.NewClient()
	device, err := mongoClient.GetDevice(in.Id)
	if err != nil {
		return nil
	}
	if device.Status == "paired" {
		changeDeviceActive(mongoClient, device, true)
		for {
			select {
			case <-stream.Context().Done():
				log.Println("Device disconnected")
				changeDeviceActive(mongoClient, device, false)
				return nil
			default:
			}

			device, err = mongoClient.GetDevice(in.Id)
			if err != nil {
				changeDeviceActive(mongoClient, device, false)
				return nil
			}

			if device.Status == "removed" {
				stream.Send(&pb.DeviceConnectionResponse{
					Action: "removed",
				})
				changeDeviceActive(mongoClient, device, false)
				return nil
			}

			dc, err := mongoClient.GetDeviceControl(in.Id)
			if err != nil {
				changeDeviceActive(mongoClient, device, false)
				return nil
			}
			if dc.New {
				log.Println("New Device Control!")
				stream.Send(&pb.DeviceConnectionResponse{
					Action:        "control",
					DeviceControl: dc,
				})
				dc.New = false
				mongoClient.ReplaceDeviceControl(dc)
			}

			a, err := mongoClient.GetAnimation(in.Id)
			if err != nil {
				changeDeviceActive(mongoClient, device, false)
				return nil
			}
			if a.New {
				log.Println("New Animation!")
				stream.Send(&pb.DeviceConnectionResponse{
					Action:    "animation",
					Animation: a,
				})
				a.New = false
				mongoClient.ReplaceAnimation(a)
			}

			time.Sleep(1 * time.Second)
		}
	} else if device.Status == "removed" {
		stream.Send(&pb.DeviceConnectionResponse{
			Action: "removed",
		})
	}

	changeDeviceActive(mongoClient, device, false)
	return nil
}

func changeDeviceActive(mongoClient *mongo.Client, device *pb.Device, state bool) {
	device.Active = state
	mongoClient.ReplaceDevice(device)
}
