#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

${SCRIPT_PATH}/build-ignite.sh && \
${SCRIPT_PATH}/.server-docker/build.sh && \
${SCRIPT_PATH}/.cache-initializer/build.sh && \
${SCRIPT_PATH}/.ignite-tensorflow/build.sh && \
rm -r ${SCRIPT_PATH}/tmp