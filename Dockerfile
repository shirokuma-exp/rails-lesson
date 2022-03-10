FROM ruby:3.0
RUN apt-get update -qq && apt-get install -y postgresql-client \
    build-essential \
    libpq-dev
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
RUN npm install --global yarn

WORKDIR /rails-lesson
COPY Gemfile Gemfile.lock /rails-lesson/
RUN bundle install