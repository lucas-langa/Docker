FROM ruby:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install yarn -y
RUN apt-get upgrade yarn

RUN /bin/bash -l -c  "gem install rails"

WORKDIR /opt
RUN rails new hello_world
WORKDIR /opt/hello_world
RUN rails webpacker:install
RUN rake db:migrate
