#!/bin/bash

if [ "$#" -gt 1 ] ; then
    echo "$0: Max 1 arguments expected"
    exit 3
fi

docker build --force-rm -f ./docker/$1.Dockerfile -t $1 . --progress=plain --no-cache

DANGLING=$(docker images -f "dangling=true" -q)
docker rmi -f $DANGLING

