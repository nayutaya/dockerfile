FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    imagemagick \
  && rm --recursive --force /var/lib/apt/lists/*
