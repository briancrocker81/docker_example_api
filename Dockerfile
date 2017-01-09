FROM ruby:2.4.0-alpine
RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  && rm -rf /var/cache/apk/*


WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install --without test development

COPY . /app