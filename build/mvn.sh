#!/usr/bin/bash
echo "*******************************"
echo "******building-docker-image****"
echo "*******************************"
docker run --rm -v /home/ec2-user/jenkins/pipeline/app/samplepro:/app -v /root/.m2:/root/.m2 -w /app maven:3.6-alpine "$@"
