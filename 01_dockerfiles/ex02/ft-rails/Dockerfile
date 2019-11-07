FROM ruby:latest

RUN apt-get update -qq && apt-get install
RUN gem install rails
RUN mkdir /opt/app/

ONBUILD ADD hello_world /opt/app/
ONBUILD RUN bundle install
ONBUILD RUN rake db:create:all #create db
ONBUILD RUN rake db:migrate #creates schema file
WORKDIR /opt/app/hello_world



