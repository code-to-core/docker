#!/bin/bash

source config
echo $tag
docker build -t $tag .
