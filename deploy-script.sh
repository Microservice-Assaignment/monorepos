#! /bin/bash

ARGS=("$*")
workingDir="/Users/apple/Documents/study_test/devops2"
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
done