#!/bin/bash

# Run thi son the host, noth within the docker image, then connect
# http://localhost:4000

$(dirname $0)/chkconfig.sh
if [ $? != 0 ]
then
	exit 1
fi

source config

#exec=$(echo docker run "$run_args" $publish_as /bin/bash)
exec=$(echo docker run -it $publish_as /bin/bash)
echo $exec
$exec

