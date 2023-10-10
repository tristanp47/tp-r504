#!/bin/bash
docker network create net-tp4
if [ $? != 0 ]
then
	echo "echec de la commande"
	exit 2
fi
