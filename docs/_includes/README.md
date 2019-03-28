
# BUILDS

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
