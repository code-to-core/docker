#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

$(dirname $0)/chkconfig.sh
if [ $? != 0 ]
then
	exit 1
fi

source config

docker run -p 4000:80 $tag &

id=""
count=0

while [[ -z "$id" && $count -le 3 ]]
#while [ -z "$id" -a $count -le 3 ]
do
	id=$(docker container ls | grep $tag | cut -d ' ' -f1)
	echo $id $count
	((count++))
	sleep 1
done

echo $tag started with container id $id
