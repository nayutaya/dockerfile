FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    libltdl7 \
  && rm --recursive --force /var/lib/apt/lists/*
