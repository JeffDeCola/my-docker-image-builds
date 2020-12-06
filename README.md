# my-docker-image-builds

[![Maintainability](https://api.codeclimate.com/v1/badges/402cd0e7cab3f6405cdb/maintainability)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

_A place to build and push my docker images I use for various projects._

tl;dr,

```bash
docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example
docker exec -i -t compact-multi-stage-build-example /bin/bash
docker logs -f compact-multi-stage-build-example
```

Table of Contents,

* [compact-multi-stage-build-example](https://github.com/JeffDeCola/my-docker-image-builds#compact-multi-stage-build-example)
* [gcloud-kubectl](https://github.com/JeffDeCola/my-docker-image-builds#gcloud-kubectl)
* [go-gcloud-packer](https://github.com/JeffDeCola/my-docker-image-builds#go-gcloud-packer)

Documentation and reference,

* [docker-cheat-sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/orchestration/builds-deployment-containers/docker-cheat-sheet)
* My images at
  [DockerHub](https://hub.docker.com/u/jeffdecola/)

[GitHub Webpage](https://jeffdecola.github.io/my-docker-image-builds/)
_built with
[concourse ci](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/ci-README.md)_

## DOCKER BUILDS LIST

### compact-multi-stage-build-example

* Size: 12.9 MB
* Runs a simple hello program compiled using go.
* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/compact-multi-stage-build-example/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
* This docker image has at least these versions
  * alpine 3.9.2

### gcloud-kubectl
  
* Size: 1.92 GB
* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/gcloud-kubectl/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
* This docker image has at least these versions
  * ubuntu 18.04
  * gcloud SDK 241.0.0
    * Installed kubectl component
  * kubectl 1.14

### go-gcloud-packer

* Size: 542 MB
* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/go-gcloud-packer/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
* This docker image has at least these versions
  * ubuntu 18.04
  * go 1.15.3
    * Installed package "google.golang.org/appengine"
  * gcloud SDK 319.0.0
    * Installed google app engine go extension component
  * packer 1.6.5

## RUN CONTAINER & GET BASH SHELL

To run a docker container.

```bash
docker run --name go-gcloud-packer -dit jeffdecola/go-gcloud-packer
```

To get a bash shell inside a running container,

```bash
docker exec -i -t go-gcloud-packer /bin/bash
```

To see the stdout,

```bash
docker logs -f go-gcloud-packer
```
