# MY DOCKER IMAGE BUILDS

[![codeclimate Issue Count](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/issues)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_A place to keep my docker image builds._

tl;dr,

```bash
## BUILD DOCKER IMAGE
DOCKER_BUILDKIT=0 docker build -t jeffdecola/compact-multi-stage-build-example .

## PUSH TO DOCKERHUB
docker push jeffdecola/compact-multi-stage-build-example

## DEPLOY DOCKER IMAGE TO CONTAINER
docker pull jeffdecola/compact-multi-stage-build-example
docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example

## OTHER COMMANDS
docker exec -i -t compact-multi-stage-build-example /bin/bash
docker logs -f compact-multi-stage-build-example
docker images
docker ps
```

Table of Contents

* [LINUX](https://github.com/JeffDeCola/my-docker-image-builds#linux)
* [macOS](https://github.com/JeffDeCola/my-docker-image-builds#macos)
* [WINDOWS](https://github.com/JeffDeCola/my-docker-image-builds#windows)

Documentation and Reference

* My
  [docker cheat sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations/orchestration/builds-deployment-containers/docker-cheat-sheet)
* My docker images at
  [DockerHub](https://hub.docker.com/u/jeffdecola/)
* This repos
  [github webpage](https://jeffdecola.github.io/my-docker-image-builds/)
  _built with
  [concourse](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/ci-README.md)_

## LINUX

* [compact-multi-stage-build-example](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example)
  * _An example of a compact alpine docker image built using a multi-stage build._
  * This
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
  * Runs a simple hello program compiled using go
  * Size: ~14 MB
  * This docker image contains the following, with these versions or higher
    * alpine 3.17.2

* [gcloud-kubectl](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl)
  * _An ubuntu 18.04 docker image containing gcloud (with kubectl component)
  and kubectl_
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
  * Size: ~3.1 GB
  * This docker image contains the following, with these versions or higher
    * ubuntu 22.04
    * gcloud SDK 419.0.0
      * Installed kubectl component 1.24.10
    * kubectl 1.24+

* [go-gcloud-packer](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer)
  * _An ubuntu 22.04 docker image containing go,
    gcloud SDK (with google app engine go extension) and packer_
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
  * Size: ~????542 MB
  * This docker image contains the following, with these versions or higher
    * ubuntu 18.04
    * go 1.15.3
    * gcloud SDK 419.0.0
      * Installed google app engine go extension component
    * packer 1.8.6

## macOS

_Coming soon._

## WINDOWS

_Coming soon._
