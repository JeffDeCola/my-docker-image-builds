# gcloud-kubectl

[![Docker Pulls](https://badgen.net/docker/pulls/jeffdecola/gcloud-kubectl?icon=docker&label=pulls)](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)

_A docker image containing gcloud and kubectl._

## OVERVIEW

* The
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/gcloud-kubectl)
* Size: 1.92 GB
* This docker image contains the following, with these version or higher
  * ubuntu 18.04
  * gcloud SDK 241.0.0
    * Installed kubectl component
  * kubectl 1.14

## TO BUILD AND PUSH TO DOCKERHUB

[build-push.sh](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl/build-push.sh)
contains,

```bash
docker build -t jeffdecola/gcloud-kubectl .
docker push jeffdecola/gcloud-kubectl
```

Obviously, you will have to edit and create an account at dockerhub.

## TO DEPLOY

To run on your machine, I suggest,

```bash
docker run --name gcloud-kubectl -dit jeffdecola/gcloud-kubectl
```

To bash shell into the container,

```bash
docker exec -i -t gcloud-kubectl /bin/bash
```

To see the output,

```bash
docker logs -f gcloud-kubectl
```
