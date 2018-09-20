#!/bin/bash
set -eu
IMAGE_NAME=${USER}/ffmpeg
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
