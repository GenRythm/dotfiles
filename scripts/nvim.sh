#!/bin/bash

PORT=8080

ARG=""
ARG="${ARG} -d --rm -it"
ARG="${ARG} -h rust-dev"
ARG="${ARG} -p $PORT:$PORT"
ARG="${ARG} --add-host host.docker.internal:host-gateway"
ARG="${ARG} --name=rust-dev"
ARG="${ARG} -w /root"
ARG="${ARG} rust-dev"
ARG="${ARG} /bin/bash -c \"
    nvim --headless --listen 0.0.0.0:$PORT\
\""
echo $ARG | xargs docker run

nvim --server 0.0.0.0:$PORT --remote-ui

