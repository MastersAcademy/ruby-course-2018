FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /rails_lection_hw
WORKDIR /rails_lection_hw
COPY Gemfile /rails_lection_hw/Gemfile
COPY Gemfile.lock /rails_lection_hw/Gemfile.lock
RUN bundle install
COPY . /rails_lection_hw
