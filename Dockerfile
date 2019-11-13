FROM ubuntu:latest

RUN apt-get install -y figlet find

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ['/bin/bash', '/entrypoint.sh']
