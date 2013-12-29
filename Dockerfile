# This is a base dockerfile for deploying apps.
# VERSION               0.0.1

FROM stackbrew/ubuntu:13.10

MAINTAINER Murtaza Husain murtaza52@gmail.com

RUN wget -O /etc/nginx/sites-available/default https://raw.github.com/murtaza52/faiz-nginx/master/default

# Get the static-faiz
RUN cd /var/www && git clone https://github.com/murtaza52/faiz-static

CMD service nginx start