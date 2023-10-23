#!/bin/bash
groupadd t_users

for CrUser in $(cat liste1.txt); do
	adduser --disabled-password --gecos "" --ingroup t_users "$CrUser"
        echo "L'utilisateur $CrUser a été créé et ajouté au groupe t_users."
done
