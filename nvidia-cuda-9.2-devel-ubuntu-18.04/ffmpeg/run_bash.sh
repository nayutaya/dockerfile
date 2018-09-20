#!/bin/bash
set -eu
IMAGE_NAME=${USER}/ffmpeg
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
