# Start image
FROM --platform=${TARGETPLATFORM:-linux/amd64} python:3

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN printf "I am running on ${BUILDPLATFORM:-linux/amd64}, building for ${TARGETPLATFORM:-linux/amd64}\n$(uname -a)\n"

# Maintainer
LABEL maintainer="derogab"

# Install app dependencies
RUN apt-get clean && apt-get update && \
    ln -snf /usr/share/zoneinfo/Europe/Rome /etc/localtime && \
    apt-get install -y python3 \
                       python3-dev \
                       python3-pip \
                       tzdata \
                       build-essential \
                       cmake \
                       gcc \
                       wget \
                       git \
                       gfortran \
                       cython \
                       libopenblas-dev \
                       liblapack-dev \
                       libatlas-base-dev

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install urllib3 pandas sklearn scipy numpy
RUN python3 -m pip install h5py tensorflow
