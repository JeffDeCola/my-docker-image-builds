#!/bin/sh
# build-push.sh

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

echo "Build your docker image using /build-push/Dockerfile"
docker build -t jeffdecola/compact-multi-stage-build-example .
echo " "

echo "Assuming you are logged in, lets push your built docker image to DockerHub"
docker push jeffdecola/compact-multi-stage-build-example
echo " "

echo "Check https://hub.docker.com/r/jeffdecola/compact-multi-stage-build-example"
echo " "
echo "docker run --name compact-multi-stage-build-example -dit jeffdecola/compact-multi-stage-build-example"
echo "docker exec -i -t compact-multi-stage-build-example /bin/bash"
echo "docker logs -f compact-multi-stage-build-example"
echo " "

echo "build-push.sh (END)"
echo " "
