#!/bin/bash
echo "*******************************"
echo "******building-docker-image****"
echo "*******************************"

workspace=/home/ec2-user/jenkins/jenkins_home/workspace/maven-proj

docker run --rm --user "$(id -u):$(id -g)" -v $workspace/app:/app -v /root/.m2:/root/.m2 -w /app maven:3.6-alpine "$@"
