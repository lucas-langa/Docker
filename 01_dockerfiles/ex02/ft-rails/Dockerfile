FROM ruby:2.5.5
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install yarn -y
RUN apt-get upgrade yarn -y
RUN /bin/bash -l -c  "gem install rails"
WORKDIR /opt
COPY hello_world /opt/
EXPOSE 3000
WORKDIR /opt/hello_world
RUN bundle update 
RUN bundle install
RUN rails db:create
RUN rake db:migrate
