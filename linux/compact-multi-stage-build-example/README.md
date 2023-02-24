# compact-multi-stage-build-example

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/compact-multi-stage-build-example?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_An example of a compact alpine docker image built using a multi-stage build._

Table of Contents

* [OVERVIEW](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/compact-multi-stage-build-example#overview)
* [TO BUILD AND PUSH TO DOCKERHUB](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/compact-multi-stage-build-example#to-build-and-push-to-dockerhub)
* [TO DEPLOY](https://github.com/JeffDeCola/my-docker-image-builds/tree/master/linux/compact-multi-stage-build-example#to-deploy)

## OVERVIEW

* This
[Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
creates this
[docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
* Runs a simple hello program compiled using go
* Size: ~13 MB
* This docker image contains the following, with these version or higher
  * alpine 3.17.2

## TO BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/build-push.sh)
contains,

```bash
DOCKER_BUILDKIT=0 docker build -t jeffdecola/compact-multi-stage-build-example .
docker push jeffdecola/compact-multi-stage-build-example
```

Obviously, you will have to edit and create an account at dockerhub.

## TO DEPLOY

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
