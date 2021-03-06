#Download base image ubuntu 16.04
FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

WORKDIR /app

RUN apk add --no-cache alpine-sdk
RUN apk add --no-cache openjdk7-jre

ADD ./grassroot-nlu /app

RUN sh depends.sh

# EXPOSE 5000

# ENV PATH /app/activate_me.sh:$PATH

# RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
#     locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

# CMD sh activate_me.sh