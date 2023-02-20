package main

import (
	"app/app"
	"fmt"
	"os"
)

func main() {
	demoAddress := os.Getenv("DEMO_ADDRESS")
	demoPort := os.Getenv("DEMO_PORT")
	if demoAddress == "" {
		demoAddress = "0.0.0.0"
	}
	if demoPort == "" {
		demoPort = "8010"
	}

	fmt.Println("Starting server")
	app.Serve(demoAddress + ":" + demoPort)
}
