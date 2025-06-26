#!/usr/bin/env bash

docker run -it --rm \
    --network=host \
    --runtime=nvidia \
    -e QT_X11_NO_MITSHM=1 \
    --shm-size 8G \
    -e DISPLAY="$DISPLAY" \
    -v ~/Documents/gsdo:/root/gsdo \
    -v ~/Documents/dataset:/root/dataset \
    -v /dev/dri:/dev/dri \
    --name gsdo_container gsdo