#!/bin/sh

docker build -t python-docker .
docker run python-docker
