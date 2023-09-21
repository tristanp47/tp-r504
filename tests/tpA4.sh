#!/bin/bash

if [ -z "$1" ]; then
	echo "Pas de lettre en argument"
	exit 1
fi

lettre="$1"

for fichier in /etc/$lettre*; do
    if [ -e "$fichier" ]; then
	type_fichier=$(file -b "$fichier")
	if [ "$type_fichier" != "directory" ]; then
		echo "Nom de fichier : $fichier"
		echo "Type : $type_fichier"
		echo " "
	fi
    fi
done

