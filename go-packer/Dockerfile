# my-docker-images-build go-packer

FROM golang:1.10.3

LABEL Jeff DeCola (https://github.com/JeffDeCola/my-docker-image-builds)

# UPDATE AND UPGRADE
RUN apt-get -y update
RUN apt-get -y upgrade

# INSTALL PACKAGES
RUN apt-get -y install unzip

# ADD PACKER TO /usr/local
RUN wget -q https://releases.hashicorp.com/packer/1.3.5/packer_1.3.5_linux_amd64.zip
RUN unzip packer_1.3.5_linux_amd64.zip
RUN rm packer_1.3.5_linux_amd64.zip
RUN mv packer /usr/local/
RUN echo 'export PATH="$PATH:/usr/local/packer"' >> /root/.bashrc
