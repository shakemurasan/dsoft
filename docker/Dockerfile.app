FROM ruby:2.4.1

ARG WORK=/usr/src/work
RUN mkdir -p $WORK && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR $WORK
CMD bundle install && \
    rails server -b 0.0.0.0 -p 3000
