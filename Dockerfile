FROM debian

RUN apt-get update
RUN apt-get install -y python-pip supervisor postgresql-common libpq-dev python-dev

ADD https://github.com/kelseyhightower/confd/releases/download/v0.5.0/confd-0.5.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

ADD app/ /app
ADD etc/ /etc
ADD usr/ /usr

RUN pip install -r /app/requirements.txt