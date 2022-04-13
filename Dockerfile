FROM python:3.9-alpine
MAINTAINER Michael Ziegler Developer

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#RUN mkdir /app
WORKDIR /app
COPY ./app /app
COPY . .

RUN adduser -D user
USER user
