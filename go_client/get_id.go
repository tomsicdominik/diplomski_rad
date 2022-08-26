package main

import (
	"context"
	"log"
	"os"

	pb "go_client/proto"
)

func getID(c pb.DodoledServiceClient) {
	log.Println("getID was invoked")
	r, err := c.RBPairing(context.Background(), &pb.RBPairingRequest{Type: "Dodoled1", Rows: 7, LedsPerRow: 12})

	if err != nil {
		return
	}

	log.Printf("getID status: %s, id: %s\n", r.Status, r.Id)

	if r.Status == "OK" {
		file, err := os.OpenFile(
			"deviceid.txt",
			os.O_WRONLY|os.O_TRUNC|os.O_CREATE,
			0666,
		)
		if err != nil {
			return
		}
		defer file.Close()

		// Write bytes to file
		byteSlice := []byte(r.Id)
		bytesWritten, err := file.Write(byteSlice)
		if err != nil {
			return
		}
		log.Printf("Wrote %d bytes.\n", bytesWritten)
	}
}
