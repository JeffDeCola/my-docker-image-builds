_built with
[concourse ci](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/ci-README.md)_

# DOCKER BUILDS LIST

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
  * ubuntu 20.04
  * go 1.15.3
    * Installed package "google.golang.org/appengine"
  * gcloud SDK ???????????????????????????.0.0
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
