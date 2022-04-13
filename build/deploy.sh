#!/usr/bin/bash
rm /home/ec2-user/jenkins/pipeline/build/.auth
echo maven-pro > .auth
echo $BUILD_TAG >> .auth
echo $PASS >> .auth

scp /home/ec2-user/jenkins/pipeline/build/.auth prod-user@172.31.6.142:/home/prod-user/maven/
scp /home/ec2-user/jenkins/pipeline/build/publish.sh prod-user@172.31.6.142:/home/prod-user/maven/
ssh prod-user@172.31.6.142:"/home/prod-user/maven/publish.sh"
