# Start image
FROM tensorflow/tensorflow:latest

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
