#!/bin/bash
set -eu
IMAGE_NAME=${USER}/image-magick
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
