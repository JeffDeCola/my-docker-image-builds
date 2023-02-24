# my-docker-images-build go-gcloud-packer

# PULL UBUNTU BASE IMAGE
FROM ubuntu:22.04

LABEL maintainer="Jeff DeCola https://github.com/my-docker-image-builds"

# UPDATE AND UPGRADE
RUN apt-get -y update
RUN apt-get -y upgrade

# INSTALL PACKAGES
RUN apt-get -y install unzip
RUN apt-get -y install lsb-release
RUN apt-get -y install wget
RUN apt-get -y install curl
RUN apt-get -y install gnupg2
RUN apt-get -y install git
RUN apt-get -y install apt-utils

# UPDATE AND UPGRADE
RUN apt-get -y update
RUN apt-get -y upgrade

# INSTALL PACKAGES
RUN apt-get -y install build-essential

# INSTALL GOLANG TO /usr/local
RUN wget -q https://storage.googleapis.com/golang/go1.20.1.linux-amd64.tar.gz
RUN tar -xf go1.20.1.linux-amd64.tar.gz
RUN rm go1.20.1.linux-amd64.tar.gz
RUN mv go /usr/local

# SET GO ENVIRONMENT VARIABLES
ENV GOPATH="/root"
ENV GOROOT="/usr/local/go"
ENV GOBIN=$GOPATH/bin
ENV PATH=$GOROOT/bin::$GOBIN:$PATH
RUN echo 'export GOPATH="/root" && \
    export GOROOT="/usr/local/go" && \
    export GOBIN=$GOPATH/bin && \
    export PATH=$GOROOT/bin::$GOBIN:$PATH && \ 
    CDPATH=$CDPATH:$GOPATH/src/github.com' >> /root/.bashrc
RUN go version

# INSTALL PACKER TO /usr/local/bin
RUN wget -q https://releases.hashicorp.com/packer/1.8.6/packer_1.8.6_linux_amd64.zip
RUN unzip packer_1.8.6_linux_amd64.zip
RUN rm packer_1.8.6_linux_amd64.zip
RUN mv packer /usr/local/bin
RUN packer version

# INSTALL GCLOUD CLI (VIA PACKAGE MANAGER)
# RUN apt-get install -y apt-transport-https ca-certificates gnupg
# RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
#    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | tee /usr/share/keyrings/cloud.google.gpg && \
#    apt-get -y update && apt-get -y install google-cloud-sdk
# INSTALL GCLOUD COMPONENTS (kubectl)
# RUN apt-get -y install kubectl

# INSTALL GCLOUD CLI (VIA DIRECT DOWNLOAD)
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-419.0.0-linux-x86_64.tar.gz && \
    tar -xf google-cloud-cli-419.0.0-linux-x86_64.tar.gz && \
    rm google-cloud-cli-419.0.0-linux-x86_64.tar.gz && \
    ./google-cloud-sdk/install.sh -q
ENV PATH "$PATH:/google-cloud-sdk/bin"

# INSTALL GCLOUD COMPONENTS
RUN gcloud components install app-engine-go -q

# SHOW GCLOUD VERSIONS
RUN gcloud version
RUN gcloud components list --show-versions
