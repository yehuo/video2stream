#!/bin/bash

# source /app/stream.conf

while true; do
  for file in ${VIDEO_FOLDER}/*; do
    echo "Current video file is: $file"
    ffmpeg -re -i "$file" \
      -c:v libx264 -preset fast -maxrate ${VIDEO_BITRATE} -bufsize 6000k -pix_fmt yuv420p \
      -c:a aac -b:a ${AUDIO_BITRATE} -f flv "${RTMP_SERVER}${STREAM_KEY}"

    echo "stream is done: $file"
  done
done
