# This is a base dockerfile for deploying apps.
# VERSION               0.0.1

FROM stackbrew/ubuntu:13.10

MAINTAINER Murtaza Husain murtaza52@gmail.com

RUN (apt-get update && apt-get upgrade -y -q && apt-get dist-upgrade -y -q && apt-get -y -q autoclean && apt-get -y -q autoremove)

# Install git
RUN apt-get -y install git-core

# Install nginx
RUN apt-get -y install libpcre3-dev nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN update-rc.d nginx defaults
EXPOSE 80