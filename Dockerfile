# Start image
FROM python:3

# Install everything
RUN pip install --upgrade pip && \
    pip install pandas sklearn scipy numpy

RUN pip install tensorflow