FROM ubuntu:18.04

# Update Packages
RUN apt-get update \
 && apt-get upgrade -y

# Install Media Related Tools
RUN apt-get update && apt-get install -y livemedia-utils netcat iputils-ping net-tools ffmpeg \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD echo "Ubuntu Container with Media&Network Tools is running..."

ENTRYPOINT /bin/bash
