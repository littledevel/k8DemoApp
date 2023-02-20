package main

import (
	"app/app"
	"fmt"
)

func main() {
	fmt.Println("Starting server")
	app.Serve("0.0.0.0:8000")
}
