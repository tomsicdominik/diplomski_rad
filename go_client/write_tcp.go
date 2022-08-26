package main

import (
	"net"
)

func writeToPython(message string) {

	servAddr := "localhost:5587"
	tcpAddr, err := net.ResolveTCPAddr("tcp", servAddr)
	if err != nil {
		println("ResolveTCPAddr failed:", err.Error())
		return
	}

	conn, err := net.DialTCP("tcp", nil, tcpAddr)
	if err != nil {
		println("Dial failed:", err.Error())
		return
	}

	_, err = conn.Write([]byte(message))
	if err != nil {
		println("Write to server failed:", err.Error())
		return
	}

	println("write to server = ", message)

	reply := make([]byte, 1024)

	_, err = conn.Read(reply)
	if err != nil {
		println("Write to server failed:", err.Error())
		return
	}

	println("reply from server=", string(reply))

	conn.Close()
}
