#!/bin/bash
set -e
cd $(dirname $0)
source ./params.sh

MOUNT="-v ./image/opt/app/:/opt/app/"
NAMES="--hostname $NAME --name $NAME"
ENTRY="--entrypoint /bin/bash"

docker run -it --rm $MOUNT $NAMES $ENTRY $IMAGE
