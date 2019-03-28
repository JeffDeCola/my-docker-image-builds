# my-docker-image-builds

[![Maintainability](https://api.codeclimate.com/v1/badges/402cd0e7cab3f6405cdb/maintainability)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-docker-image-builds/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`my-docker-image-builds` _is a place to build and push my docker images
I use for various projects._

The `my-docker-image-builds`
[GitHub Webpage](https://jeffdecola.github.io/my-docker-image-builds/).

## BUILDS

* `go-packer`
  ([docker Image](https://hub.docker.com/r/jeffdecola/go-packer)) -
  Contains debian, go and packer.

## RUN CONTAINER & GET BASH SHELL

To run a docker container.

```bash
docker run --name go-packer -dit jeffdecola/go-packer
```

To get a bash shell inside a running container,

```bash
docker exec -i -t go-packer /bin/bash
```
