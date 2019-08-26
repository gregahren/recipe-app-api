FROM python:3.7-alpine

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --trusted-host pypi.python.org -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user