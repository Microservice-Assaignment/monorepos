#! /bin/bash

ARGS=("$*")
workingDir="./microservices"
docker login -u keanthai -p keanthaihub
# docker build -t keanthai/haproxy:latest ./haproxy
docker build -t keanthai/int-haproxy:latest ./haproxy/int-haproxy
docker push keanthai/int-haproxy:latest

deploying(){
    cd "${workingDir}/$1"
    git pull
    docker build -t keanthai/$1:latest .
    docker push keanthai/$1:latest
    cd ../..
}
if [[ $ARGS == all ]]; 
then
    for app in `${workingDir}/*`
    do
        deploying "${app}"
    done
else
    for ARG in $ARGS
    do 
        deploying "${ARG}"
    done
fi
./start.sh
