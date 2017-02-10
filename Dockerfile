FROM ruby:2.3.3
MAINTAINER blueplanet

RUN \
  apt-get update && \
  curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
  apt-get install -y nodejs --no-install-recommends

ARG BUNDLE_JOBS=4
RUN gem update --system && gem install bundler
