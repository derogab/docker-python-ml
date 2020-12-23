# Start image
FROM python:3

# Install everything
RUN pip install --upgrade pip && \
    pip install pandas sklearn scipy numpy

RUN wget https://storage.googleapis.com/tensorflow-nightly/tensorflow-1.10.0-cp34-none-linux_armv7l.whl && \
    python3 -m pip install tensorflow-1.10.0-cp34-none-linux_armv7l.whl