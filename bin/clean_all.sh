#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

docker container rm $(docker container ls -a -q)
docker image rm $(docker image ls -a -q)
