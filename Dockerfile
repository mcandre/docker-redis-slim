FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk update && \
    apk add redis@edge
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
