#!/usr/bin/env bash

# Download the image to /srv/main.iso
[[ -n ${IMAGE_URL} ]] || export IMAGE_URL='https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso'
[[ -e /srv/main.iso ]] || curl -L "${IMAGE_URL}" -o /srv/main.iso

# Serve the image with Python's http module
[[ -n ${HTTP_PORT} ]] || export HTTP_PORT="3003"
echo "Serving at http://container-ip:${HTTP_PORT}"
cd /srv
python3 -m http.server --directory . ${HTTP_PORT}
