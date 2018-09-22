FROM ruby:2.5.1

RUN mkdir /nmax
WORKDIR /nmax
ADD . /nmax
RUN bundle install

ENV LC_ALL C.UTF-8
