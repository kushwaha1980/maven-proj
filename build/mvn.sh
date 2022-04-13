#!/bin/bash
echo "*******************************"
echo "******building-docker-image****"
echo "*******************************"

workspace=/var/jenkins_home/workspace/maven-proj

docker run --user "$(id -u):$(id -g)" --rm -v $workspace/app:/app -v /root/.m2:/home/jenkins -w /app maven:3.6-alpine "$@"
