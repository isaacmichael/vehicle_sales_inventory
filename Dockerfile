#Dockerfile
#gets the docker parent image


FROM ruby:3.0.0

ARG APP_DIR="/opt/app"


RUN apt-get update && apt-get install -y npm && npm install -g yarn

RUN mkdir -p "${APP_DIR}"
COPY . "${APP_DIR}/"

WORKDIR "${APP_DIR}"

RUN gem install bundler:2.2.30

RUN bundle install

RUN mkdir -p tmp/pids

CMD bundle exec rails db:create db:migrate db:seed && bundle exec rails s -b '0.0.0.0'

