# syntax=docker/dockerfile:1
FROM ubuntu:latest 
COPY . /patricia-app
WORKDIR /patricia-app
RUN make
CMD python app.py
