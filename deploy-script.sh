#! /bin/bash

ARGS=("$*")
# workingDir="/microservice/monorepos/microservices"
workingDir="./microservices"
docker login -u keanthai -p keanthaihub
docker build -t keanthai/haproxy:latest ./haproxy

deploying(){
    cd "${workingDir}/$1"
    echo "path --- ${workingDir}/$1"
    # pwd
    git pull
    docker build -t keanthai/$1:latest .
    docker push keanthai/$1:latest
    # cd ../..
}
echo ${ARGS}
if [ $ARGS = all ]; 
then
    for app in `${workingDir}/`
    do
        echo ${app}
        deploying "${app}"
    done
else
    for ARG in $ARGS
    do 
        deploying "${ARG}"
    done
fi
./start.sh
