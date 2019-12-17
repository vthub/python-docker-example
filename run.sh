#!/bin/sh

docker build -t python-docker .

# Run docker as a webapp:
#    -it - runs docker in the interactive mode so that you can stop it with ctrl+c
#    -p 8080:8080 - exposes port on your local machine to access Flask on localhost:8080
docker run \
  -it \
  -p 8080:8080 \
  python-docker

# Once docker is up and running go to http://localhost:8080/ in your browser.
