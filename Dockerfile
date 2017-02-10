FROM ruby:2.3.3
MAINTAINER blueplanet

RUN apt-get update && apt-get install -y --no-install-recommends \
        nodejs \
        mysql-client \
    && rm -rf /var/lib/apt/lists/* \

RUN gem update bundler
