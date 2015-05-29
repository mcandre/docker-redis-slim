FROM alpine:3.1
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apk update && \
    apk add redis=2.8.17-r0
EXPOSE 6379
ENTRYPOINT /usr/bin/redis-server
