#!/bin/bash

if [ ! -e ./config ]
then
	echo "Run this script in a directory with a config file"
	exit 1
fi

exit 0
