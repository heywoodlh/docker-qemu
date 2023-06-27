FROM docker.io/python:3.11

COPY entrypoint.sh /entrypoint.sh

RUN useradd -ms /bin/bash srv \
    && mkdir -p /srv \
    && chown -R srv /srv

USER srv

ENV IMAGE_URL=""
ENV HTTP_PORT="3003"
VOLUME /srv

EXPOSE 3003

ENTRYPOINT ["/entrypoint.sh"]
