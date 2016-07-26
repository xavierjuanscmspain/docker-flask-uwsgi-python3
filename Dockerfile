FROM python:3.4

MAINTAINER Xavier Juan <xavijs2@gmail.com>

RUN pip install uwsgi
RUN apt-get update && apt-get install -y supervisor \
&& rm -rf /var/lib/apt/lists/*

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./app /app
WORKDIR /app

CMD ["/usr/bin/supervisord"]
