
FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y curl gnupg2

RUN curl https://install.husarnet.com/install.sh | bash

COPY ./husarnet-docker.sh /usr/bin/husarnet-docker
RUN chmod +x /usr/bin/husarnet-docker

ENV HOSTNAME=husarnet

CMD husarnet-docker