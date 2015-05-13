FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apk add --update redis

EXPOSE 6379

ENTRYPOINT /usr/bin/redis-server
