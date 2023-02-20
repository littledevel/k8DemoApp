######################################################################
# @author      : Kostas Makedos (kostas.makedos@gmail.com)
# @file        : Makefile
# @created     : Δευτέρα Φεβ 20, 2023 16:36:22 EET
# @copyright   : Copyright (c) Makedos GP, 2023
######################################################################
BINARY = demo
SOURCE = demo.go
DEMO_ADDRESS ?= 0.0.0.0
DEMO_PORT ?= 8010


build: 
	CGO_ENABLED=0 go build $(SOURCE)

docker: build
	docker build -t $(BINARY) .

start: docker
	docker run -d --name $(BINARY)-server -p $(DEMO_PORT):$(DEMO_PORT) $(BINARY)

run: docker
	docker run -it -p $(DEMO_PORT):$(DEMO_PORT) $(BINARY)

clean: 
	@$(RM) -rv $(BINARY)
	docker rm -f $(BINARY)-server
	docker rmi -f $(BINARY)

