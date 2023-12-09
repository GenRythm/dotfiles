#!/bin/bash

if [ "$#" -gt 2 ] ; then
    echo "$0: Max 2 arguments expected"
    exit 3
fi

docker build --force-rm -f ./docker/$1.Dockerfile -t $2 . --progress=plain --no-cache

DANGLING=$(docker images -f "dangling=true" -q)
docker rmi -f $DANGLING

docker builder prune
