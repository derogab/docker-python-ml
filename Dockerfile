FROM python:3

RUN pip install --upgrade pip && \
    pip install pandas sklearn scipy numpy tensorflow
