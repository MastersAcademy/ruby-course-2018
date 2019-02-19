FROM ruby:2.6.1
RUN apt-get update && apt-get install -qq -y \
    build-essential git nodejs libpq-dev libgit2-dev pkg-config \
    --fix-missing --no-install-recommends
RUN apt-get install -y --no-install-recommends apt-utils
RUN gem install bundler --no-document
# Set an environment variable to store where the app is installed to inside
# of the Docker image.
ENV INSTALL_PATH /home/app
RUN mkdir -p $INSTALL_PATH

# This sets the context of where commands will be run in and is documented
# on Docker's website extensively.
RUN mkdir -p $INSTALL_PATH/tmp/pids
WORKDIR $INSTALL_PATH

# Ensure gems are cached and only get updated when they change. This will
# drastically increase build times when your gems do not change.
COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle check | bundle install

ENTRYPOINT ["bundle", "exec"]