FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
  && rm --recursive --force /var/lib/apt/lists/*
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ xenial main" > /etc/apt/sources.list.d/azure-cli.list
RUN curl -L https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    azure-cli \
  && rm --recursive --force /var/lib/apt/lists/*
