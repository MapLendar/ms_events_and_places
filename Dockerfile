FROM ruby:2.3
RUN mkdir /ms_events_sites
WORKDIR /ms_events_sites
ADD Gemfile /ms_events_sites/Gemfile
ADD Gemfile.lock /ms_events_sites/Gemfile.lock
RUN bundle install
ADD . /ms_events_sites
