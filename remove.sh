#!/usr/bin/env bash

DOCKER_IMAGE_NAME="ubuntu-tini-dev-chrome"

docker rm \
  "${DOCKER_IMAGE_NAME}"
