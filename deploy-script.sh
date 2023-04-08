#! /bin/bash

ARGS=("$*")
workingDir="/microservice/monorepos"
docker login -u keanthai -p keanthaihub
for ARG in $ARGS
do 
    pwd
    cd "${workingDir}/${ARG}"
    echo "${workingDir}/${ARG}"
    pwd
    git pull
    docker build -t keanthai/$ARG:latest .
    docker push keanthai/$ARG:latest
    cd ..
    ./start.sh
done
