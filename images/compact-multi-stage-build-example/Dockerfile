# my-docker-images-build compact-multi-stage-build-example

# Multi-stage build to create a small docker image

#################################
# STAGE 1 build executable binary
#################################

FROM golang:alpine AS builder

# INSTALL GIT
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git

# SET WORKING DIRECTORY AND PLACE YOUR CODE IN
WORKDIR /my-code
COPY . .

# CHECK
RUN ls -lat /my-code
RUN go version

# FETCH GO DEPENDENCIES
RUN go get -d -v

# BUILD GO BINARY
RUN go build -o /go/bin/hello main.go

###############################
# STAGE 2 build a smaller image
###############################

FROM alpine

# LABEL REPO
LABEL maintainer="Jeff DeCola https://github.com/JeffDeCola/my-docker-image-builds"

# CHECK ALPINE VERSION
RUN cat /etc/alpine-release

# PUT GO BINARY IN /app
RUN mkdir /app
COPY --from=builder /go/bin/hello /app/hello
WORKDIR /app

# ADD ABILITY TO USE /bin/bash IN alpine
RUN apk add --update bash

# RUN GO BINARY
ENTRYPOINT ["/app/hello"]
