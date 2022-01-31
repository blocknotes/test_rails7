# Base image
FROM ruby:2.7.5-alpine

# Install required packages and tools
RUN apk add --no-cache --update build-base gcompat nano sqlite sqlite-dev tzdata

# Copy project files
WORKDIR /project
COPY . /project

RUN bundle install
RUN bin/rails db:test:prepare

EXPOSE 3000

CMD rm -f /project/tmp/pids/server.pid && bin/rails s -e test
