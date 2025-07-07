#!/bin/bash
set -e
cd $(dirname $0)
source ./params.sh

# match pull to "FROM" in Dockerfile !!!
docker pull node:24-slim

docker build --no-cache --progress=plain -t ${IMAGE} .
docker image prune -f
docker push ${IMAGE}
