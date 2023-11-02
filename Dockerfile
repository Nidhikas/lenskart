FROM ubuntu 

MAINTAINER "nidhikashyap168@gmail.com"

RUN apt-get update && apt-get -y install openssh-server

RUN apt-get install -y net-tools

COPY index.html /home

CMD service ssh start && bash

