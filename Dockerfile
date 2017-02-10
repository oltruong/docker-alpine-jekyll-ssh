FROM ruby:2.4.0-alpine

LABEL maintainer oltruong<contact@oltruong.com>

ENV JEKYLL_VERSION  3.4.0
ENV MINIMA_VERSION  2.1.0

RUN apk add --update bash build-base libffi-dev openssh rsync
RUN gem install bundler
RUN gem install jekyll -v $JEKYLL_VERSION
RUN gem install minima -v $MINIMA_VERSION