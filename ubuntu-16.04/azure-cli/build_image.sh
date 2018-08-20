#!/bin/bash
set -eu
IMAGE_NAME=${USER}/azure-cli
cd -- `dirname -- $0`
docker build \
  --tag ${IMAGE_NAME} \
  .
