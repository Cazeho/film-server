#!/bin/bash

# remote ubuntu server

curl -s https://raw.githubusercontent.com/Cazeho/download_project/main/docker_ubuntu.sh | bash

mkdir -p minio/data

docker-compose up -d
