FROM python:3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /workspace
WORKDIR /workspace
ADD requirements.txt /workspace/
RUN pip install -r requirements.txt
ADD . /workspace/