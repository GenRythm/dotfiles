#!/bin/bash

if [ "$#" -gt 2 ] ; then
    echo "$0: Max 2 arguments expected"
    exit 3
fi

if [ "$#" -eq 1 ] ; then
    docker run --rm -it -h $1 --name $1 $1
fi
if [ "$#" -eq 2 ] ; then
    docker run --rm -it -h $1 --name $1 $1:$2
fi

