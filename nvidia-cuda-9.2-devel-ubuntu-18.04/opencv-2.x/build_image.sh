#!/bin/bash
set -eu
IMAGE_NAME=${USER}/cuda-9.2/opencv-2.x
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
