#!/bin/bash

set -eu

DOCKERFILE_PATH="${WORKSPACE}/Dockerfile"

echo "Building docker image for app:  ${DOCKER_APP_NAME}"
echo "DOCKERFILE_PATH : ${DOCKERFILE_PATH}"
ls -lhrt ${DOCKERFILE_PATH}

docker build -t "${DOCKER_APP_NAME}" -f ${DOCKERFILE_PATH} .

if [[ $? -eq 0 ]]; then
  echo "Successfully built ${DOCKER_APP_NAME} image."
else
  echo "ERROR: failed to build image ${DOCKER_APP_NAME}, exiting 1"
  exit 1
fi

docker image ls
