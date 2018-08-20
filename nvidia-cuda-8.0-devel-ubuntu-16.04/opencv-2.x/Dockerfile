FROM nvidia/cuda:8.0-devel-ubuntu16.04

ENV NVIDIA_DRIVER_CAPABILITIES all

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    cmake \
    ffmpeg \
    libavcodec-dev \
    libavformat-dev \
    libavresample-dev \
    libjpeg-dev \
    libpng-dev \
    libswscale-dev \
    libtbb-dev \
    libtiff-dev \
    libv4l-dev \
    pkg-config \
    unzip \
    wget \
  && rm --recursive --force /var/lib/apt/lists/*
ARG OPENCV_VERSION=2.4.13.7
RUN mkdir -p /tmp/opencv \
  && cd /tmp/opencv/ \
  && wget --quiet https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip \
  && unzip ${OPENCV_VERSION}.zip -d . \
  && mkdir /tmp/opencv/opencv-${OPENCV_VERSION}/build \
  && cd /tmp/opencv/opencv-${OPENCV_VERSION}/build/ \
  && cmake \
    -D BUILD_TESTS=OFF \
    -D BUILD_PERF_TESTS=OFF \
    -D WITH_FFMPEG=ON \
    -D WITH_TBB=ON \
    -D WITH_CUDA=ON \
    -D WITH_CUBLAS=ON \
    -D WITH_NVCUVID=ON \
    -D ENABLE_FAST_MATH=ON \
    -D CUDA_FAST_MATH=ON \
    -D CUDA_ARCH_BIN="6.1" \
    -D CUDA_ARCH_PTX="6.1" \
    -D CUDA_nvcuvid_LIBRARY=/usr/lib/x86_64-linux-gnu/libnvcuvid.so.1 \
    .. \
    | tee /tmp/opencv_cmake.log \
  && make --jobs $(nproc) \
    | tee /tmp/opencv_build.log \
  && make install \
    | tee /tmp/opencv_install.log \
  && rm --recursive --force /tmp/opencv
