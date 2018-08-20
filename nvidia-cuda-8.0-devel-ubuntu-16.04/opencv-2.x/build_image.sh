#!/bin/bash
set -eu
IMAGE_NAME=${USER}/opencv-2.x
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
