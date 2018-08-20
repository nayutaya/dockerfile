#!/bin/bash
set -eu
IMAGE_NAME=${USER}/aws-cli
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
