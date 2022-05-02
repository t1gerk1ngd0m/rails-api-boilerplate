FROM ruby:latest

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install --jobs 4
COPY . .
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && rails s -p 3000 -b '0.0.0.0'"]
