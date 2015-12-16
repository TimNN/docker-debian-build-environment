FROM debian:stable

MAINTAINER Leonard Marschke <github@marschke.me>

#update software repos
RUN apt-get update \
#ugrade software
    && apt-get -y upgrade \
    && apt-get -y install apt-utils \
#install some useful tools need to build grml (git is needed to use with gitlab ci)
    && apt-get -y install \
        git \
        build-essential \
#clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*