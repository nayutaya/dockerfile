FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ca-certificates \
    git \
    wget \
  && rm --recursive --force /var/lib/apt/lists/*
ARG GIT_LFS_VERSION=2.5.1
RUN mkdir /root/git-lfs \
  && cd /root/git-lfs/ \
  && wget --quiet https://github.com/git-lfs/git-lfs/releases/download/v2.5.1/git-lfs-linux-amd64-v${GIT_LFS_VERSION}.tar.gz \
  && tar zxfv git-lfs-linux-amd64-v${GIT_LFS_VERSION}.tar.gz \
  && ./install.sh \
  && rm --recursive --force /root/git-lfs/
