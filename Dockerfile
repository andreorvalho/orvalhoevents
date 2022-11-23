# syntax=docker/dockerfile:1
FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /orvalhoevents
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY . .

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]