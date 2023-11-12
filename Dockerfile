FROM ruby:3.2.2-alpine3.17

RUN apk update \
  && apk upgrade \
  && apk add --update \
      tzdata \
      git \
      linux-headers \
      build-base \
      sqlite-dev \
      postgresql-dev \
      && rm -rf /var/cache/apk/*

RUN mkdir -p /var/www/app

WORKDIR /var/www/app

RUN gem install bundler

ADD Gemfile Gemfile.lock ./

RUN bundle install

ADD . /var/www/app
