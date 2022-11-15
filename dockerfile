FROM python:latest

EXPOSE 5000

RUN apt-get update -y

RUN apt-get install git -y

RUN git clone https://github.com/pr57039n/Docker-Containerized-Application

WORKDIR /Docker-Containerized-Application

RUN pip install -r requirements.txt

ENTRYPOINT FLASK_APP=application flask run --host=0.0.0.0
