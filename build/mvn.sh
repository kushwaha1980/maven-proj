#!/bin/bash
echo "*******************************"
echo "******building-docker-image****"
echo "*******************************"

workspace=/var/jenkins_home/workspace/maven-proj

docker run --rm -v $workspace/app:/app -v /root/.m2:/root/.m2 -w /app maven:3.6-alpine "$@"
