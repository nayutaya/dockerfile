FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    python3-dev \
    python3-pip \
    python3-setuptools \
  && rm --recursive --force /var/lib/apt/lists/*
RUN pip3 install awscli
