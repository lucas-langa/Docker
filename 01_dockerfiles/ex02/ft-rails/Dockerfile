FROM ruby:latest

RUN apt-get update -qq && apt-get install
RUN gem install rails
RUN mkdir /opt/app/
ONBUILD ADD hello_world /opt/app/
WORKDIR /opt/app


ONBUILD RUN bundle install
ONBUILD RUN rails db:create