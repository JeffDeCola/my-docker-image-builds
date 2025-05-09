# gcloud-kubectl

[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)
[![MIT License](https://img.shields.io/:license-mit-blue.svg)](https://jeffdecola.mit-license.org)
[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/gcloud-kubectl?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)

[![DockerHub Badge](http://dockeri.co/image/jeffdecola/gcloud-kubectl)](https://hub.docker.com/r/jeffdecola/gcloud-kubectl/)

_Using docker to build a docker image
containing the Ubuntu 22.04 OS
(with gcloud and kubectl)._

Table of Contents

* [DOCKERFILE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/gcloud-kubectl#dockerfile)
* [BUILD IMAGE AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/gcloud-kubectl#build-image-and-push-to-dockerhub)
* [DEPLOY IMAGE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/gcloud-kubectl#deploy-image)

Documentation and Reference

* [docker](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations/orchestration/builds-deployment-containers/docker-cheat-sheet)
* My docker images at
  [DockerHub](https://hub.docker.com/u/jeffdecola/)
* An illustration of how
  [vagrant, docker and packer](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations/orchestration/builds-deployment-containers/packer-cheat-sheet#vagrant-docker-and-packer)
  build and deploy images
* My
  [docker linux scripts](https://github.com/JeffDeCola/my-linux-shell-scripts/tree/master?tab=readme-ov-file#docker)

## DOCKERFILE

* [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/gcloud-kubectl/Dockerfile)
* [Dockerhub image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
* Size: ~3.1GB
* Source Image: docker
  * **"ubuntu:22.04"** for docker on linux
* Custom Image: docker
  * ubuntu 22.04 for docker on linux
* Contains:
  * gcloud SDK 419.0.0
    * Installed kubectl component 1.24.10
  * kubectl 1.25

## BUILD IMAGE AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/gcloud-kubectl/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/gcloud-kubectl .
docker push jeffdecola/gcloud-kubectl
```

Obviously, you will have to edit and create an account at dockerhub.

## DEPLOY IMAGE

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
```

To see the output,

```bash
docker logs -f gcloud-kubectl
```
