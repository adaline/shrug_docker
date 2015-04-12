FROM ruby:2.2.1-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libsqlite3-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile /app/
COPY Gemfile.lock /app/
RUN bundle install

VOLUME /app

EXPOSE 3000

ENTRYPOINT rm /app/tmp/pids/*.pid; bundle exec rails s -b 0.0.0.0
