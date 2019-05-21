# hello-go-deploy-gce Dockerfile used to build docker image

# Multi-stage build to create a small docker image

#################################
# STAGE 1 build executable binary
#################################

FROM golang:alpine AS builder

# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git

# SET WORKING DIRECTORY AND PLACE YOUR CODE IN
WORKDIR $GOPATH/my-code
COPY . .

# CHECK
RUN ls -lat $GOPATH/my-code

# Fetch dependencies using go get.
RUN go get -d -v

# Build the binary.
RUN go build -o /go/bin/hello.go

###############################
# STAGE 2 build a smaller image
###############################

FROM alpine

# Add my name to it
LABEL maintainer="Jeff DeCola https://github.com/JeffDeCola/my-docker-image-builds"

# Put the binary from previous build into /app
RUN mkdir /app
COPY --from=builder /go/bin/hello /app/hello
WORKDIR /app

# Add the ailibty to /bin/bash in alpine
RUN apk add --update bash

# Run the binary.
ENTRYPOINT ["/app/hello"]