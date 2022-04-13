#!/usr/bin/bash

export IMAGE=$(sed -n "1p" ~/maven/.auth)
export BUILD_TAG=$(sed -n "2p" ~/maven/.auth)
export PASS=$(sed -n "3p" ~/maven/.auth)

docker login -u kumard31 -p $PASS

cd ~/maven && docker-compose -f remote-docker-compose.yaml up -d
