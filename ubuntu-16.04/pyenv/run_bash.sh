#!/bin/bash
set -eu
IMAGE_NAME=${USER}/pyenv
docker run --interactive --tty --rm \
  --volume $(pwd):/workspace \
  ${IMAGE_NAME} \
  /bin/bash
