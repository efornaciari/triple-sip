FROM ruby:2.6.3

RUN mkdir /triple-sip
WORKDIR /triple-sip


# Install Node
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs


# Setup application
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN gem install bundler && bundle install
RUN rails app:update:bin

COPY . /triple-sip

EXPOSE 3005
