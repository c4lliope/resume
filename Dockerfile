FROM ruby:latest

ADD Gemfile* /app/
WORKDIR /app
RUN bundle install
