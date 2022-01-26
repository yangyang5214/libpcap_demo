package main

import (
	"fmt"
	"github.com/google/gopacket/pcap"
	"os"
)

func main() {

	fmt.Print("start ...")

	devices, err := pcap.FindAllDevs()
	if err != nil {
		os.Exit(-1)
	}
	fmt.Println(devices)

}
