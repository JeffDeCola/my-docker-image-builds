  _built with
  [concourse](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/ci-README.md)_

# LINUX

* [compact-multi-stage-build-example](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example)
  * _A lite docker image built using a multi-stage build_
  * This
  [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/compact-multi-stage-build-example/Dockerfile)
  creates this
  [docker Image](https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example)
  * Runs a simple hello program compiled using go
  * Size: 12.9 MB
  * This docker image contains the following, with these version or higher
    * alpine 3.9.2

* [gcloud-kubectl](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/gcloud-kubectl)
  * _A docker image containing gcloud and kubectl_
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

* [go-gcloud-packer](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer)
  * _A docker image containing gcloud and packer_
  * The
    [Dockerfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/linux/go-gcloud-packer/Dockerfile)
    creates this
    [docker Image](https://hub.docker.com/r/jeffdecola/go-gcloud-packer)
  * Size: 542 MB
  * This docker image contains the following, with these version or higher
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
