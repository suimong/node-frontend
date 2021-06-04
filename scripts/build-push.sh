#!/usr/bin/env bash

#set -e
#set -x

read -p "dockerhub用户名："  DOCKER_USERNAME
read -s -p "dockerhub密码："  DOCKER_PASSWORD

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t suimong/node-frontend:12 ..

docker build -t suimong/node-frontend:latest ..

docker push suimong/node-frontend:12

docker push suimong/node-frontend:latest
