# develop
## run
docker-compose up

## connect
docker exec -it $(docker ps --latest --quiet) bash

## remove
docker rm $(docker ps -a -q)

# deploy
cf login
cf push