#!/bin/bash

repository=devops_eval

id=$(sudo docker container ls | grep $repository | cut -d ' ' -f1)

if [ -z "$id" ] 
then
	echo container for $repository was not found
	exit 1
fi

sudo docker logs $id
