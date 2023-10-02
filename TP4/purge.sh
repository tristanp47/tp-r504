#!/bin/bash

n=$(docker ps -q)
if [$n == 0]
then
	echo "Aucun conteneur lancé"
else 
	docker stop $(docker ps -q)
	if [$? != 0]
	then
		exit 2
fi

docker rm -f $(docker ps -aq)
if [$? != 0]
then
	exit 2
fi

docker network prune -f
if [$? != 0]
then
	exit 2
fi
docker volume prune -f
if [$? != 0]
then
	exit 2
fi

docker image prune -af
if [$? != 0]
then
	exit 2
fi
