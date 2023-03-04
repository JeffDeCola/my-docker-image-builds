  _built with
  [concourse](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/ci-README.md)_

# OVERVIEW

Docker is useful for the automated **BUILD** of a docker custom image.
Docker is also useful for the automated **DEPLOY** of a docker custom image
in an loosely isolated environment. This is useful for easily launching
an App/Service.

![IMAGE - docker-overview - IMAGE](pics/docker-overview.jpg)

## DOCKER IMAGES

* [compact-multi-stage-build-example](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/compact-multi-stage-build-example)

  _Using docker to multi-stage build a docker image
  containing the alpine OS._

* [gcloud-kubectl](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/gcloud-kubectl)

  _Using docker to build a docker image
  containing the Ubuntu 22.04 OS
  (with gcloud and kubectl)._

* [go-gcloud-packer](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/go-gcloud-packer)

  _Using docker to build a docker image
  containing the ubuntu 22.04 OS
  (with go, gcloud and packer)._
