#!/bin/bash


$(dirname $0)/chkconfig.sh
if [ $? != 0 ]
then
	exit 1
fi

source config

docker login
if [ $? != 0 ]
then
	exit $?
fi


docker push $publish_as
