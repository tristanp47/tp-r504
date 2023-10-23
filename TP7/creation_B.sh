while IFS=";" read v_nom v_passwd
do
	adduser --disabled-password --gecos "" --ingroup t_users "$v_nom"
	passwd=$(pwgen -1)
	echo "$v_nom:$passwd" | chpasswd
	echo "nom=$v_nom passwd=$passwd"
done < liste3.txt
