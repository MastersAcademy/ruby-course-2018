FROM ruby:2.5.1
RUN apt-get update && apt-get install -qq -y build-essential git nodejs libpq-dev cmake libgit2-dev  pkg-config  --fix-missing --no-install-recommends
RUN apt-get install -y --no-install-recommends apt-utils vim htop wget tar

ENV BUNDLE_PATH /bundle
RUN gem update --system
RUN gem install bundler --no-document -v "2.0.1"
RUN bundle config git.allow_insecure true

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle check | bundle install
ADD . /myapp