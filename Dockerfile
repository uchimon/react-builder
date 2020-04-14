# base image
FROM node:alpine3.11

WORKDIR /app

ADD . /app

ENTRYPOINT ["/app/start.sh"]



