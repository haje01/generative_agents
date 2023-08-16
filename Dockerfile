FROM python:3.9.17-slim-bullseye

RUN groupadd -r python && useradd -r -g python python

COPY --chown=python:python ./environment/ /app/environment/
WORKDIR /app/environment/frontend_server/
RUN pip install --no-cache-dir -r requirements.txt

COPY --chown=python:python ./reverie/ /app/reverie/
WORKDIR /app