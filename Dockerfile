FROM ruby:3.0
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /rails-lesson
COPY Gemfile Gemfile.lock /rails-lesson/
RUN bundle install