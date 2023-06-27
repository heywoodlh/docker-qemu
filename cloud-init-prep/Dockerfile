FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y cloud-image-utils \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
