# syntax=docker/dockerfile:1
FROM ubuntu:latest
COPY . /patricia-app
RUN make /patricia-app
CMD python /patricia-app/patricia-app.py
