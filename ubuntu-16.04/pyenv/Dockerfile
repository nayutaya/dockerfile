FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    bzip2 \
    ca-certificates \
    git \
    wget \
  && rm --recursive --force /var/lib/apt/lists/*
RUN git clone https://github.com/riywo/anyenv ~/.anyenv \
  && echo 'export PATH="${HOME}/.anyenv/bin:${PATH}"' >> ~/.bash_profile \
  && echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
RUN /bin/bash --login -c "anyenv install pyenv"
