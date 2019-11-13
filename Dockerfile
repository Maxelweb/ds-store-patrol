FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install -y figlet

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ['/bin/bash', '/entrypoint.sh']
