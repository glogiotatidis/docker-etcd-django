FROM debian

RUN apt-get update
RUN apt-get install -y python-pip

ADD app/ /app

RUN pip install -r /app/requirements.txt