FROM ruby:2.6.3

WORKDIR /usr/src/app
COPY hangman/Gemfile* ./
RUN bundle install
