FROM debian:stable

RUN apt update && apt install -y libssl3 ca-certificates
RUN rm -rf /var/lib/apt/lists/*

CMD /bin/bash

