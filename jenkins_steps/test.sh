#!/bin/bash

set -eu

LOCAL_CONTAINER_NAME="${DOCKER_APP_NAME}-local"
CONTAINER_PORT=5000
LOCAL_HOST_PORT=5000
DOCKER_APP_URL="localhost:${LOCAL_HOST_PORT}"
TEST_OUTPUT_FILE="flask_response.txt"

docker run -d -p ${LOCAL_PORT}:${CONTAINER_PORT} --name ${LOCAL_CONTAINER_NAME}


response=$(curl -L -s -o ${TEST_OUTPUT_FILE} ${DOCKER_APP_URL} -w "%{http_code}")

case "$response" in
  200)
    echo "SUCCESS!"
    ;;
  *)
    echo "Received: HTTP $response ==> ${DOCKER_APP_URL}\n"
    exit 1
    ;;
esac

echo "flask app response:"
cat ${TEST_OUTPUT_FILE}


