# go-gcloud-packer

[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)
[![MIT License](https://img.shields.io/:license-mit-blue.svg)](https://jeffdecola.mit-license.org)
[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/go-gcloud-packer?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)

[![DockerHub Badge](http://dockeri.co/image/jeffdecola/go-gcloud-packer)](https://hub.docker.com/r/jeffdecola/go-gcloud-packer/)

_Using docker to build a docker image
containing the ubuntu 22.04 OS
(with go, gcloud and packer)._

Table of Contents

* [DOCKERFILE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#dockerfile)
* [BUILD IMAGE AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#build-image-and-push-to-dockerhub)
* [DEPLOY IMAGE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/go-gcloud-packer#deploy-image)

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

* [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/go-gcloud-packer/Dockerfile)
* [Dockerhub image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
* Size: ~4.13GB
* Source Image: docker
  * **"ubuntu:22.04"** for docker on linux
* Custom Image: docker
  * ubuntu 22.04 for docker on linux
* Contains:
  * go 1.20.1
  * gcloud SDK 419.0.0
    * Installed app-engine-go component 1.9.72
  * packer 1.8.6

## BUILD IMAGE AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/go-gcloud-packer/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/go-gcloud-packer .
docker push jeffdecola/go-gcloud-packer
```

Obviously, you will have to edit and create an account at dockerhub.

## DEPLOY IMAGE

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
