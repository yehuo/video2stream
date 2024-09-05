# Video Stream Loop for Bilibili Using Docker

This repository contains the setup to stream pre-recorded videos in a loop to Bilibili live streaming platform using Docker and FFmpeg. The project is designed to run on a Synology NAS or any system supporting Docker.

## Features

- 24/7 Video Streaming: Loop through pre-recorded videos and stream them continuously to Bilibili.
- Dockerized Setup: Use Docker to isolate and manage the streaming environment.
- Customizable: Easily configure your RTMP server, stream key, and video settings.

## Prerequisites

Before using this project, ensure you have the following:

- A Bilibili live streaming account with an active live room.
- RTMP URL and stream key from your Bilibili live stream settings.
- Docker installed on your system (e.g., Synology NAS or a regular server).
- A collection of pre-recorded videos to stream.

## Usage

1. **Clone the Repository**

    ```shell
    git clone https://github.com/your-username/video-stream-loop.git
    cd video-stream-loop
    ```

2. **Configure Your Stream Settings**

    Edit the stream.conf file to specify your streaming details.

    ```
    # stream.conf

    # Bilibili RTMP Server URL (from Bilibili Live Streaming settings)
    RTMP_SERVER=rtmp://live-push.bilivideo.com/live-bvc/

    # Unique stream key from Bilibili
    STREAM_KEY=your_stream_key_here

    # Folder containing the videos to be streamed
    VIDEO_FOLDER=/videos

    # Local folder path to mount
    SOURCE_VIDEO_FOLDER=/path/to/videos

    # Optional: Video and audio bitrate settings
    VIDEO_BITRATE=3000k
    AUDIO_BITRATE=160k

    ```

3. **Run Docker**

    ```shell
    ./init.sh
    ```

4. **Stream to Bilibili**

    The container will start streaming your videos in a loop to the Bilibili platform using FFmpeg.

5. **Monitor the Logs**

    To check if the streaming is running successfully, you can view the Docker container logs:

    ```shell
    docker logs <container_id>
    ```

## Customization

Modify the `stream.conf` file to update streaming settings.
Add new videos to your /videos folder, and they will automatically be included in the stream loop.
Adjust the FFmpeg parameters in `stream.sh` for custom encoding settings.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.