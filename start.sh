#!/bin/sh

# $1 - docker image name
# $2 - docker container name
# $3 - expose ports

ports=""

for port in $(echo $3 | tr "," "\n")
do
  if [[ "${1}" == *":"* ]];
  then
    ports+="-p ${port} "
  else
    ports+="-p ${port}:${port} "
  fi
done

echo "docker image: ${1}"
echo "docker container: ${2}"
echo "docker expose: ${3}"

docker stop $2

docker run -di --rm --name $2 -v /`pwd`:/usr/local/proj $ports $1