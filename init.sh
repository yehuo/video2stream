#!/bin/bash

# source /app/stream.conf

docker build -t bilibili-stream .
docker run -v "${SOURCE_VIDEO_FOLDER}:/videos" -d bilibili-stream

