# compact-multi-stage-build-example

[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)
[![MIT License](https://img.shields.io/:license-mit-blue.svg)](https://jeffdecola.mit-license.org)
[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/compact-multi-stage-build-example?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)

[![DockerHub Badge](http://dockeri.co/image/jeffdecola/compact-multi-stage-build-example)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example/)

_Using docker to multi-stage build a docker image
containing the alpine OS._

Table of Contents

* [DOCKERFILE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/compact-multi-stage-build-example#dockerfile)
* [BUILD IMAGE AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/compact-multi-stage-build-example#build-image-and-push-to-dockerhub)
* [DEPLOY IMAGE](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/images/compact-multi-stage-build-example#deploy-image)

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

* [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/compact-multi-stage-build-example/Dockerfile)
* [Dockerhub image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
* Size: ~14MB
* Source Image: docker
  * **"golang:alpine"** for docker on linux
* Custom Image: docker
  * alpine 3.17.2 for docker on linux
* Contains:
  * hello program compiled using go

## BUILD IMAGE AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/compact-multi-stage-build-example/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/compact-multi-stage-build-example .
docker push jeffdecola/compact-multi-stage-build-example
```

Obviously, you will have to edit and create an account at dockerhub.

## DEPLOY IMAGE

To run on your machine, I suggest,

```bash
docker pull jeffdecola/compact-multi-stage-build-example
docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example
```

To bash shell into the container and check versions,

```bash
docker exec -i -t compact-multi-stage-build-example /bin/bash
cat /etc/os-release
```

To see the output,

```bash
docker logs -f compact-multi-stage-build-example
```
