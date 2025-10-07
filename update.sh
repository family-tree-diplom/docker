#!/bin/bash

git pull origin master
git submodule update --init --recursive

docker-compose build
docker-compose up -d
docker-compose restart nginx
