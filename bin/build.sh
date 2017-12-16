#!/bin/bash


$(dirname $0)/chkconfig.sh
if [ $? != 0 ]
then
	exit 1
fi

source config
echo $tag
docker build -t $tag .