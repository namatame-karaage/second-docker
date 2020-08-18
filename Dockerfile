FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    node.js \
    postgresql-client \
    yarn
WORKDIR /second-docker
COPY Gemfile Gemfile.lock /second-docker/
RUN bundle install
