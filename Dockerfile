# Start image
FROM python:3

# Install everything
RUN pip install --upgrade pip && \
    pip install pandas sklearn scipy numpy

RUN wget https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow_cpu-2.4.0-cp38-cp38-manylinux2010_x86_64.whl && \
    python3 -m pip install tensorflow_cpu-2.4.0-cp38-cp38-manylinux2010_x86_64.whl