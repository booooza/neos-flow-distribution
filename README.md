# build
docker build -t neos-flow ops/neos

# run
docker run neos-flow

# connect
docker exec -it $(docker ps --latest --quiet) bash

# remove
docker rm $(docker ps -a -q)
