#!/bin/bash
set -eu
IMAGE_NAME=${USER}/pyenv
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
