#!/bin/bash

DOCKER_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1)
neovide --maximized --server=$DOCKER_IP:$2

