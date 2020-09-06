#!/bin/sh -l

ls -la /
cp /entrypoint-server.sh ./entrypoint-server.sh
cp /Dockerfile ./Dockerfile
echo "After copy..."
ls -la

echo "Exposing docker on port $1..."
docker build . -t lms
docker run -d -p $1:80 --name docker-lms lms
# docker run -p $1:80 --name docker-lms lms
