FROM ruby:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN /bin/bash -l -c  "gem install rails"
RUN apt-get install yarn -y
WORKDIR /opt
RUN rails new hello_world
WORKDIR /opt/hello_world
RUN rake db:migrate