#!/bin/bash
if [ -z "${DOCKER_USER}" ]
then
  export DOCKER_USER=dajohn
fi
docker run -it "${DOCKER_USER}/dev-analytics-grimoire-docker-minimal" /bin/bash
