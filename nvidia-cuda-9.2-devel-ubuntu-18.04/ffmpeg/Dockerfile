FROM nvidia/cuda:9.2-devel-ubuntu18.04

ENV NVIDIA_DRIVER_CAPABILITIES all

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    ffmpeg \
  && rm --recursive --force /var/lib/apt/lists/*
