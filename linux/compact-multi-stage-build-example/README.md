# compact-multi-stage-build-example

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/my-docker-image-builds/compact-multi-stage-build-example?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/my-docker-image-builds/linux/compact-multi-stage-build-example?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)

_A lite docker image built using a multi-stage build._

## OVERVIEW

* Size: 12.9 MB
* Runs a simple hello program compiled using go
* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
* This docker image has at least these versions
  * alpine 3.9.2

## USEFUL COMMANDS

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
