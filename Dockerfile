############################################################
# Dockerfile to build uwsgi using python3 container images
# Based on Ubuntu 14.04.4
############################################################

FROM ubuntu:14.04.4
MAINTAINER Xavier Juan <xavijs2@gmail.com>

RUN apt-get update

# python 3.4 has already installed by os
RUN apt-get install -y \
            python3-pip

# clean apt-get
RUN apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove

# update pip
RUN pip3 install -U pip setuptools

# install uwsgi
RUN pip3 install uwsgi

# DEMO app here
COPY ./app /var/app

# install requirements
RUN pip3 install -r /var/app/requirements.txt

# expose ports
EXPOSE 8080

CMD uwsgi --ini /var/app/uwsgi_config.ini