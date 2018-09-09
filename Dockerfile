FROM ruby:2.4.2-alpine

LABEL maintainer oltruong<contact@oltruong.com>

ENV JEKYLL_VERSION  3.6.2
ENV MINIMA_VERSION  2.1.1
ENV JEKYLL_SITE_MAP 1.1.1
ENV ASCIIDOCTOR_VERSION 1.5.7.1
ENV ASCIIDOCTOR_PDF_VERSION 1.5.0.alpha.16

RUN apk add --update bash build-base libffi-dev openssh rsync nodejs
RUN gem install bundler
RUN gem install jekyll -v $JEKYLL_VERSION
RUN gem install minima -v $MINIMA_VERSION
RUN gem install jekyll-sitemap -v $JEKYLL_SITE_MAP
RUN gem install asciidoctor -v $ASCIIDOCTOR_VERSION
RUN gem install asciidoctor-pdf -v $ASCIIDOCTOR_PDF_VERSION
RUN npm install -g firebase-tools