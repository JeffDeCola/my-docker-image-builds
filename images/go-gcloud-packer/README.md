# go-gcloud-packer

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/go-gcloud-packer?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_An ubuntu 22.04 docker image containing go, gcloud SDK and packer._

Table of Contents

* [OVERVIEW](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#overview)
* [BUILD AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#build-and-push-to-dockerhub)
* [DEPLOY](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#deploy)

## OVERVIEW

* The
[Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/go-gcloud-packer/Dockerfile)
creates this
[docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
* Size: ~4.13 GB
* This docker image contains the following, with these versions or higher
* ubuntu 22.04
  * go 1.20.1
  * gcloud SDK 419.0.0
    * Installed app-engine-go component 1.9.72
  * packer 1.8.6

## BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/go-gcloud-packer/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/go-gcloud-packer .
docker push jeffdecola/go-gcloud-packer
```

Obviously, you will have to edit and create an account at dockerhub.

## DEPLOY

To run on your machine, I suggest,

```bash
docker pull jeffdecola/go-gcloud-packer
docker run --name go-gcloud-packer -dit jeffdecola/go-gcloud-packer
```

To bash shell into the container and check versions,

```bash
docker exec -i -t go-gcloud-packer /bin/bash
lsb_release -a
gcloud version
gcloud components list --show-versions
```

To see the output,

```bash
docker logs -f go-gcloud-packer
```
