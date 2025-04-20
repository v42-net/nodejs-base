#!/bin/bash
set -e
cd $(dirname $0)
IMAGE=ghcr.io/v42-net/$(basename $(pwd)):latest
docker build --no-cache --progress=plain -t ${IMAGE} .
docker image prune -f
docker push ${IMAGE}
