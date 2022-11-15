FROM python:latest

EXPOSE 5000

RUN apt update

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT FLASK_APP=application flask run --host=0.0.0.0
