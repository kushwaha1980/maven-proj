#!/usr/bin/bash
rm ~/jenkins/pipeline/build/*.jar
cp -r ~/jenkins/pipeline/app/target/*.jar ~/jenkins/pipeline/build/

echo "********************************"
echo "*****building-docker-image******"
echo "********************************"

cd ~/jenkins/pipeline/build/ && docker-compose build
