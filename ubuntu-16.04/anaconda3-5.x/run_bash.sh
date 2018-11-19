#!/bin/bash
set -eu
IMAGE_NAME=${USER}/anaconda3-5.x
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
