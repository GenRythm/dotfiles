FROM fedora:39

RUN dnf install -y openssl-devel

CMD /bin/bash

