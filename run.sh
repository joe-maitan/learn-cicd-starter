#!/bin/bash

set -a
source .env
set +a

go clean

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o notely

sudo docker build --tag jjmaitan/notely:latest .

sudo docker run --env PORT=43564 --port 43564:8080 jjmaitan/notely:latest
