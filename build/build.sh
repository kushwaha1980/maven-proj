#!/bin/bash
cp -f app/target/*.jar build/

echo "********************************"
echo "*****building-docker-image******"
echo "********************************"

cd build/ && docker-compose build --no-cache
