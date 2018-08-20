#!/bin/bash
set -eu
IMAGE_NAME=${USER}/git-lfs
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
