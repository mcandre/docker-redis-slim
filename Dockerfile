FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apk add --update redis=2.8.17-r0
EXPOSE 6379
ENTRYPOINT /usr/bin/redis-server
