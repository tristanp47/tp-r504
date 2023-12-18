#!/bin/bash

while true; do
    echo "Sélectionnez"
    echo "1 - Vérifier l’existence d’un utilisateur"
    echo "2 - Connaître l’UID d’un utilisateur"
    echo "q - Quitter"

    read -p "Votre choix : " choix

    case $choix in
        1)
            read -p "Nom d'utilisateur à vérifier : " username
            if grep -q "$username:" /etc/passwd; then
                echo "L'utilisateur $username existe."
            else
                echo "L'utilisateur $username n'existe pas."
            fi
            ;;  
        2)
            read -p "Nom d'utilisateur pour connaître l'UID : " username
            uid=$(grep "$username:" /etc/passwd | awk -F: '{print $3}')
            if [ -n "$uid" ]; then
                echo "L'UID de l'utilisateur $username est $uid."
            else
                echo "L'utilisateur $username n'existe pas."
            fi
            ;;
        q)
            echo "Au revoir !"
            exit 0
            ;;
        *)
            echo "Option non valide. Veuillez réessayer."
            ;;
    esac
done
