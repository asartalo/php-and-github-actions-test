#!/bin/sh -l

echo "Port is $1"
pwd

ls -la /
cp /entrypoint-server.sh ./entrypoint-server.sh
cp /Dockerfile ./Dockerfile
echo "After copy..."
ls -la
cat Dockerfile

echo "Docker inception start..."
docker build . -t lms
# docker run -d -p $1:80 --name docker-lms lms
docker run -p $1:80 --name docker-lms lms
