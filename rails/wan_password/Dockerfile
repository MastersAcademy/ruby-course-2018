FROM ruby:2.5.1
RUN apt-get update && apt-get install -qq -y \
    build-essential git nodejs libpq-dev libgit2-dev pkg-config \
    --fix-missing --no-install-recommends
RUN apt-get install -y --no-install-recommends apt-utils

ENV BUNDLE_PATH /bundle
RUN gem install bundler --no-document
RUN bundle config git.allow_insecure true

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle check | bundle install
ENTRYPOINT ["bundle", "exec"]