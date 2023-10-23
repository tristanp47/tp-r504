for SpUser in $(cat liste1.txt); do
        userdel "$SpUser"
        echo "L'utilisateur $SpUser à été supprimé"
done
