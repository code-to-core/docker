#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

tag=simple_py_web

id=$(docker container ls | grep $tag | cut -d ' ' -f1)

echo found $tag running with container id $id, stopping

docker container stop $id
