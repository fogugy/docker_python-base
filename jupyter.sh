#!/bin/sh

# $1 - docker container name
# $2 - jupyter port

docker exec -it $1 sh  -c "jupyter notebook --notebook-dir=/usr/local/proj --ip=0.0.0.0 --port=${2:-8888} --allow-root --no-browser"