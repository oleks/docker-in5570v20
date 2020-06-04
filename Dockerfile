FROM portoleks/debian-i386:latest

ARG username=docker

MAINTAINER Oleks <oleks@oleks.info>

COPY emerald-0.99-linux.tar.gz /home/docker/

RUN \
  tar xvf emerald-0.99-linux.tar.gz && \
  rm emerald-0.99-linux.tar.gz && \
  mv emerald-0.99-linux emerald

ENV EMERALDROOT=/home/docker/emerald
ENV PATH="/home/docker/emerald/bin:${PATH}"

USER root
RUN apt-get -y update && \
  apt-get install -y build-essential && \
  apt-get clean
USER $username

COPY .bashrc /home/docker

CMD ["bash"]
