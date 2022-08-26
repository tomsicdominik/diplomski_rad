package main

import (
	"errors"
	"io/ioutil"
	"log"
	"os"
	"time"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"

	pb "go_client/proto"
)

var addr string = "dodoled.co:50051"

func main() {

	opts := []grpc.DialOption{}

	certFile := "ssl/ca.crt"
	creds, err := credentials.NewClientTLSFromFile(certFile, "")

	if err != nil {
		log.Fatalf("Error while loading CA trust certificate: %v\n", err)
	}
	opts = append(opts, grpc.WithTransportCredentials(creds))

	opts = append(opts, grpc.WithChainUnaryInterceptor(LogInterceptor(), AddHeaderInterceptor()))

	for {
		conn, err := grpc.Dial(addr, opts...)
		if err != nil {
			log.Fatalf("Did not connect: %v", err)
		}
		c := pb.NewDodoledServiceClient(conn)
		if _, err := os.Stat("deviceid.txt"); err == nil {
			log.Printf("Already have an ID\n")
			content, err := ioutil.ReadFile("deviceid.txt")
			if err != nil {
				log.Fatal(err)
			}
			result := getDeviceConnection(c, string(content))
			conn.Close()
			if result == "removed" {
				err = os.Remove("deviceid.txt")
				if err != nil {
					log.Println(err)
				}
			}
		} else if errors.Is(err, os.ErrNotExist) {
			getID(c)
			conn.Close()
		} else {
			log.Println("file?")
		}
		time.Sleep(5 * time.Second)
	}

}
