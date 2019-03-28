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
docker build -t jeffdecola/go-packer .
echo " "

echo "Assuming you are logged in, lets push your built docker image to DockerHub"
docker push jeffdecola/go-packer
echo

echo "NEXT STEPS"
echo "Check https://hub.docker.com/r/jeffdecola/go-packer"
echo "docker run --name go-packer jeffdecola/go-packer"
echo " "

echo "build-push.sh -concoure -debug (END)"
echo " "
