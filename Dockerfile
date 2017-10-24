FROM ruby:2.4.2
RUN mkdir /ms_events_and_places
WORKDIR /ms_events_and_places
ADD Gemfile /ms_events_and_places/Gemfile
ADD Gemfile.lock /ms_events_and_places/Gemfile.lock
RUN bundle install
ADD . /ms_events_and_places
