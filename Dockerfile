FROM ruby:2.3
RUN mkdir /ms_events_places
WORKDIR /ms_events_places
ADD Gemfile /ms_events_places/Gemfile
ADD Gemfile.lock /ms_events_places/Gemfile.lock
RUN bundle install
ADD . /ms_events_places
