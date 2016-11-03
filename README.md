# docker-redis-slim - a slim Docker container for Redis

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-redis-slim/

# ABOUT

docker-redis-slim is a container for a Redis server, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [alpine](https://registry.hub.docker.com/_/alpine/).

# EXAMPLE

```
$ make
docker exec 1d444db858c306b2e4998d86ff90f24d27b5856b2eee81c14c93f1a444db8544 redis-cli --version
redis-cli 3.0.1 (git:d614dd0c)
docker exec 1d444db858c306b2e4998d86ff90f24d27b5856b2eee81c14c93f1a444db8544 redis-cli set dogmoon 3
OK
docker exec 1d444db858c306b2e4998d86ff90f24d27b5856b2eee81c14c93f1a444db8544 redis-cli get dogmoon
3
docker images | grep mcandre/docker-redis-slim | awk '{ print $(NF-1), $NF }'
7.618 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
