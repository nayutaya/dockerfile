#!/bin/bash
set -eu
IMAGE_NAME=${USER}/git-lfs
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
