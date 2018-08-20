#!/bin/bash
set -eu
IMAGE_NAME=${USER}/docker
docker run --interactive --tty --rm \
  --volume /usr/bin/docker:/usr/bin/docker:ro \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --group-add $(stat --format "%g" /var/run/docker.sock) \
  ${IMAGE_NAME} \
  /bin/bash
