#!/bin/bash
set -eu
IMAGE_NAME=${USER}/opencv-2.x
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
