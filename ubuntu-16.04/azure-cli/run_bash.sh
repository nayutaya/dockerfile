#!/bin/bash
set -eu
IMAGE_NAME=${USER}/azure-cli
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
