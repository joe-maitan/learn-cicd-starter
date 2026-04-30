#!/bin/bash

set -a
source .env
set +a

# go clean

# go build .

# ./notely

./scripts/buildprod.sh

sudo docker build -t jjmaitan/notely:latest .

sudo docker run -e PORT=43564 -p 43564:8080 jjmaitan/notely:latest