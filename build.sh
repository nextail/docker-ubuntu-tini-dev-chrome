#!/usr/bin/env bash

DOCKER_REPOSITORY_NAME="nextail"
DOCKER_IMAGE_NAME="ubuntu-tini-dev-chrome"
DOCKER_IMAGE_TAG="latest"

# see: https://github.com/docker/buildx/issues/495#issuecomment-761562905
#docker buildx build --platform=linux/amd64,linux/arm64 --no-cache --progress=plain --pull \
docker buildx build --platform=linux/amd64,linux/arm64 --no-cache \
  -t "${DOCKER_REPOSITORY_NAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}" \
  --label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
  .

docker buildx build --load \
  -t "${DOCKER_REPOSITORY_NAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}" \
  .
