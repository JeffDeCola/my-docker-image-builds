# my-docker-images-build gcloud-kubectl

# PULL UBUNTU BASE IMAGE
FROM ubuntu:18.04

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

# UPDATE AND UPGRADE
RUN apt-get -y update
RUN apt-get -y upgrade

# INSTALL GCLOUD TO /usr/bin
# REMEMBER, export only good for this RUN, use ENV if you want it to stick around.
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo $CLOUD_SDK_REPO  && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get -y update && \
    apt-get -y install google-cloud-sdk

# INSTALL KUBECTL
RUN apt-get -y install kubectl

# SHOW GCLOUD VERSIONS
RUN gcloud version
RUN gcloud components list
