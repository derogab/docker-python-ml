# Start image
FROM debian:latest

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
    python3 -m pip install urllib3 h5py pandas sklearn scipy numpy

RUN wget https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow_cpu-2.4.0-cp38-cp38-win_amd64.whl && \
    python3 -m pip install tensorflow_cpu-2.4.0-cp38-cp38-win_amd64.whl