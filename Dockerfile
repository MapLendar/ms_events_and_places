FROM ruby:2.3
RUN mkdir /ms_event_places
WORKDIR /ms_event_places
ADD Gemfile /ms_event_places/Gemfile
ADD Gemfile.lock /ms_event_places/Gemfile.lock
RUN bundle install
ADD . /ms_event_places
