# my-docker-images-build go-gcloud-packer

# PULL UBUNTU BASE IMAGE
FROM ubuntu:18.04

LABEL Jeff DeCola (https://github.com/JeffDeCola/my-docker-image-builds)

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

# INSTALL GOLANG TO /usr/local
RUN wget -q https://storage.googleapis.com/golang/go1.11.linux-amd64.tar.gz
RUN tar -xf go1.11.linux-amd64.tar.gz
RUN mv go /usr/local
ENV GOPATH="/root"
ENV GOROOT="/usr/local/go"
ENV GOBIN=$GOPATH/bin
ENV PATH=$GOROOT/bin::$GOBIN:$PATH
RUN echo 'export GOPATH="/root" \n \
export GOROOT="/usr/local/go" \n \
export GOBIN=$GOPATH/bin  \n \
export PATH=$GOROOT/bin::$GOBIN:$PATH \n \ 
CDPATH=$CDPATH:$GOPATH/src/github.com' >> /root/.bashrc
RUN go version

# INSTALL GOLANG PACAKGE google.golang.org/appengine
RUN go get google.golang.org/appengine

# INSTALL PACKER TO /usr/local/bin
RUN wget -q https://releases.hashicorp.com/packer/1.3.5/packer_1.3.5_linux_amd64.zip
RUN unzip packer_1.3.5_linux_amd64.zip
RUN rm packer_1.3.5_linux_amd64.zip
RUN mv packer /usr/local/bin
RUN packer version

# INSTALL GCLOUD TO /usr/bin
# REMEMBER, export only good for this RUN, use ENV if you want it to stick around.
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo $CLOUD_SDK_REPO  && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get -y update && \
    apt-get -y install google-cloud-sdk
RUN gcloud version

# INSTALL GCLOUD COMPONENTS (app-engine go extension)
RUN apt-get -y install google-cloud-sdk-app-engine-go

# SHOW GCLOUD VERSIONS
RUN gcloud version
RUN gcloud components list
