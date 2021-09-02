#!/bin/bash

set -eu

echo "login to docker hub..."
echo $DOCKERHUB_CREDENTIALS | docker login -u $DOCKERHUB_CREDENTIALS --password-stdin
docker push ${DOCKER_APP_NAME}