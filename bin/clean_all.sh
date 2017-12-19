#!/bin/bash


docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker rmi $(docker images -q)
docker rmi $(docker images -qf "dangling=true")

docker volume rm $(docker volume ls -f dangling=true -q)

docker system prune
