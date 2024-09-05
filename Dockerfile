FROM jrottenberg/ffmpeg

WORKDIR /app

COPY stream.conf /app/stream.conf
COPY stream.sh /app/stream.sh

RUN chmod +x /app/stream.sh
RUN source /app/stream.conf

VOLUME ["/videos"]

CMD ["/bin/bash", "-c", "/app/stream.sh"]
