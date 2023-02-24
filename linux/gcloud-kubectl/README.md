# gcloud-kubectl

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/gcloud-kubectl?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_An ubuntu 18.04 docker image containing gcloud (with kubectl component) and kubectl._

Table of Contents

* [OVERVIEW](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/gcloud-kubectl#overview)
* [TO BUILD AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/gcloud-kubectl#to-build-and-push-to-dockerhub)
* [TO DEPLOY](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/gcloud-kubectl#to-deploy)

## OVERVIEW

* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
* Size: 1.92 GB
* This docker image contains the following, with these version or higher
  * ubuntu 22.04
  * gcloud SDK 241.0.0
    * Installed kubectl component
  * kubectl 1.14

## TO BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/gcloud-kubectl .
docker push jeffdecola/gcloud-kubectl
```

Obviously, you will have to edit and create an account at dockerhub.

## TO DEPLOY

To run on your machine, I suggest,

```bash
docker pull jeffdecola/gcloud-kubectl
docker run --name gcloud-kubectl -dit jeffdecola/gcloud-kubectl
```

To bash shell into the container and check versions,

```bash
docker exec -i -t gcloud-kubectl /bin/bash
lsb_release -a
gcloud version
gcloud components list --show-versions
kubectl version
```

To see the output,

```bash
docker logs -f gcloud-kubectl
```
