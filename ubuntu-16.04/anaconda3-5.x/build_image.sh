#!/bin/bash
set -eu
IMAGE_NAME=${USER}/anaconda3-5.x
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
