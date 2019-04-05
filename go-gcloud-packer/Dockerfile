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

# INSTALL GOLANG TO /usr/local
RUN wget -q https://storage.googleapis.com/golang/go1.10.3.linux-amd64.tar.gz
RUN tar -xf go1.10.3.linux-amd64.tar.gz
RUN mv go /usr/local
RUN echo 'export GOPATH="/root" \n \
export GOROOT="/usr/local/go" \n \
export GOBIN=$GOPATH/bin  \n \
export PATH=$GOROOT/bin::$GOBIN:$PATH \n \ 
CDPATH=$CDPATH:$GOPATH/src/github.com' >> /root/.bashrc

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

# INSTALL GCLOUD COMPONENTS (-q quiet mode)
RUN gcloud -q components update
# INSTALL GOOGLE APP ENGINE GO EXTENSIONS
RUN gcloud -q components install app-engine-go
RUN gcloud version
RUN gcloud components list
