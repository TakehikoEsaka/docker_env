FROM kyobad/miniconda3-alpine:latest

MAINTAINER T.Esaka

RUN pip install --upgrade pip \
    && conda install -y flask \
    && pip install flask gunicorn line-bot-sdk \
    && adduser -D botter \
    && mkdir /home/botter/app

USER botter

COPY ./app /home/botter/app

WORKDIR /home/botter/app

CMD gunicorn -b 0.0.0.0:$PORT bot:app --log-file=-

#FROM python:3
#USER root

#RUN apt-get update
#RUN apt-get -y install locales && \
#    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
#ENV LANG ja_JP.UTF-8
#ENV LANGUAGE ja_JP:ja
#ENV LC_ALL ja_JP.UTF-8
#ENV TZ JST-9
#ENV TERM xterm

#RUN apt-get install -y vim less
#RUN pip install --upgrade pip
#RUN pip install --upgrade setuptools
