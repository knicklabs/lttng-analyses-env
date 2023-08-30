FROM python:3.11.4-slim-bullseye

LABEL maintainer="Nickolas Kenyeres <nk09ja@brocku.ca>" \
      version="1.0.0"

RUN pip3 install --upgrade pip

RUN apt-get update && apt-get install -y build-essential && \
    apt-get update && \
    apt-get install -y \
      babeltrace \
      python3-babeltrace \
      python3-setuptools \
      python3-pyparsing \
      python3-lttnganalyses

RUN adduser worker
WORKDIR /home/worker

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"