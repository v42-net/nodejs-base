#!/bin/bash
set -e
cd $(dirname $0)

# IMAGE=ghcr.io/v42-net/$(basename $(pwd)):latest
IMAGE=registry.v42.net:5443/$(basename $(pwd)):latest
docker pull node:23-slim

docker build --no-cache --progress=plain -t ${IMAGE} .
docker image prune -f
docker push ${IMAGE}
