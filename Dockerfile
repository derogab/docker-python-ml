# Start image
FROM python:3

# Install everything
RUN pip install --upgrade pip && \
    pip install pandas sklearn scipy numpy

RUN wget https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow_cpu-2.4.0-cp38-cp38-win_amd64.whl && \
    python -m pip install tensorflow_cpu-2.4.0-cp38-cp38-win_amd64.whl