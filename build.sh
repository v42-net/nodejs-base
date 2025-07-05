#!/bin/bash
set -e
cd $(dirname $0)

# match pull to "FROM" in Dockerfile !!!
docker pull node:24-slim

# IMAGE=ghcr.io/v42-net/$(basename $(pwd)):latest
IMAGE=registry.v42.net:5443/$(basename $(pwd)):latest


docker build --no-cache --progress=plain -t ${IMAGE} .
docker image prune -f
docker push ${IMAGE}
