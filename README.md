# docker-redis-slim - a slim Docker container for Redis

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-redis-slim/

# ABOUT

docker-redis-slim is a container for a Redis server, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [alpine](https://registry.hub.docker.com/_/alpine/).

# EXAMPLE

```
$ make
docker exec 23dee794567ef3cd19e485b27251cc59d217b0fa53e5c8cdca0f4571662be709 redis-cli set dogmoon 3
OK
docker exec 23dee794567ef3cd19e485b27251cc59d217b0fa53e5c8cdca0f4571662be709 redis-cli get dogmoon
3
docker images | grep mcandre/docker-redis-slim | awk '{ print $(NF-1), $NF }'
6.65 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```
