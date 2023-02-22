# compact-multi-stage-build-example

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/compact-multi-stage-build-example?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)

_A lite docker image built using a multi-stage build._

## OVERVIEW

* This
[Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
creates this
[docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
* Runs a simple hello program compiled using go
* Size: 12.9 MB
* This docker image contains the following, with these version or higher
  * alpine 3.9.2

## TO BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/build-push.sh)
contains,

```bash
docker build -t jeffdecola/compact-multi-stage-build-example .
docker push jeffdecola/compact-multi-stage-build-example
```

Obviously, you will have to edit and create an account at dockerhub.

## TO DEPLOY

To run on your machine, I suggest,

```bash
docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example
```

To bash shell into the container,

```bash
docker exec -i -t compact-multi-stage-build-example /bin/bash
```

To see the output,

```bash
docker logs -f compact-multi-stage-build-example
```
