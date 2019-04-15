#!/bin/sh
# hello-go-deploy-gce build-push.sh

echo " "

if [ "$1" = "-debug" ]
then
    echo "build-push.sh -debug (START)"
    echo " "
    # set -x enables a mode of the shell where all executed commands are printed to the terminal.
    set -x
    echo " "
else
    echo " "
    echo "build-push.sh.sh (START)"
    echo " "
fi

echo "Build your docker image from binary /bin/hello-go using /build-push/Dockerfile"
docker build -t jeffdecola/gcloud-kubectl .
echo " "

echo "Assuming you are logged in, lets push your built docker image to DockerHub"
docker push jeffdecola/gcloud-kubectl
echo " "

echo "Check https://hub.docker.com/r/jeffdecola/gcloud-kubectl"
echo " "
echo "docker run --name gcloud-kubectl -dit jeffdecola/gcloud-kubectl"
echo "docker exec -i -t gcloud-kubectl /bin/bash"
echo " "

echo "build-push.sh (END)"
echo " "
