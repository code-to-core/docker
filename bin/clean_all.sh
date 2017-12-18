#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

docker container rm $(docker container ls -a -q)
docker rmi $(docker images -qf "dangling=true")
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -f dangling=true -q)
docker system prune
