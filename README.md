# MY DOCKER IMAGE BUILDS

[![codeclimate Issue Count](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/issues)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_A place to keep my docker image builds._

tl;dr,

```bash
## BUILD DOCKER IMAGE
tbd

## PUSH TO DOCKERHUB
tbd

## DEPLOY DOCKER IMAGE TO CONTAINER
docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example

## OTHER COMMANDS
docker exec -i -t compact-multi-stage-build-example /bin/bash
docker logs -f compact-multi-stage-build-example
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
  * Size: 12.9 MB
  * Runs a simple hello program compiled using go
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
  * This docker image has at least these versions
    * alpine 3.9.2

* [gcloud-kubectl](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl)
  * Size: 1.92 GB
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
  * This docker image has at least these versions
    * ubuntu 18.04
    * gcloud SDK 241.0.0
      * Installed kubectl component
    * kubectl 1.14

* [go-gcloud-packer](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer)

  * Size: 542 MB
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
  * This docker image has at least these versions
    * ubuntu 18.04
    * go 1.15.3
      * Installed package "google.golang.org/appengine"
    * gcloud SDK 319.0.0
      * Installed google app engine go extension component
    * packer 1.6.5

## macOS

_Coming soon._

## WINDOWS

_Coming soon._
