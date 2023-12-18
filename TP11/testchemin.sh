#!/bin/bash

IFS='/' read -ra dossiers <<< "$1"
chemin_partiel=""

for dossier in "${dossiers[@]}"; do
    chemin_partiel="$chemin_partiel$dossier/"
    if [ ! -d "$chemin_partiel" ]; then
        echo "Chemin invalide, le dossier $dossier n'existe pas dans $chemin_partiel"
        exit 1
    fi
done

echo "Chemin valide"
