#!/usr/bin/bash

IMAGE=maven-pro

echo "******docker-login********"

echo "*********docker-tag*******"
docker tag "${IMAGE}:${BUILD_TAG}" "kumard31/${IMAGE}:${BUILD_TAG}"

echo "*********docker-image-push*******888"
docker push "kumard31/${IMAGE}:${BUILD_TAG}"
