#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

$(dirname $0)/chkconfig.sh
if [ $? != 0 ]
then
	exit 1
fi


source config

id=$(docker container ls | grep $repository | cut -d ' ' -f1)

if [ -z "$id" ] 
then
	echo container for $repository was not found
	exit 1
fi

echo found $repository running with container id $id, attaching

docker exec -it $id bash
