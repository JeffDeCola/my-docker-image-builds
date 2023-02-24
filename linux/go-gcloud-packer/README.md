# go-gcloud-packer

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/go-gcloud-packer?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_An ubuntu 22.04 docker image containing go,
gcloud SDK (with google app engine go extension) and packer._

Table of Contents

* [OVERVIEW](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/go-gcloud-packer#overview)
* [TO BUILD AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/go-gcloud-packer#to-build-and-push-to-dockerhub)
* [TO DEPLOY](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/go-gcloud-packer#to-deploy)

## OVERVIEW

* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
* Size: 542 MB
* This docker image contains the following, with these version or higher
  * ubuntu 18.04
  * go 1.15.3
    * Installed package "google.golang.org/appengine"
  * gcloud SDK 319.0.0
    * Installed google app engine go extension component
  * packer 1.6.5

## TO BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/go-gcloud-packer .
docker push jeffdecola/go-gcloud-packer
```

Obviously, you will have to edit and create an account at dockerhub.

## TO DEPLOY

To run on your machine, I suggest,

```bash
docker pull jeffdecola/go-gcloud-packer
docker run --name go-gcloud-packer -dit jeffdecola/go-gcloud-packer
```

To bash shell into the container and check versions,

```bash
docker exec -i -t go-gcloud-packer /bin/bash
??????????????????
lsb_release -a
gcloud version
gcloud components list --show-versions
kubectl version
```

To see the output,

```bash
docker logs -f go-gcloud-packer
```
