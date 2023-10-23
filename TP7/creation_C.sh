creation() {
    v_nom=$1
    passwd=$(pwgen -1)
    adduser --disabled-password --gecos "" --ingroup t_users "$v_nom"
    echo $v_nom:$passwd | chpasswd
    echo "nom=$v_nom passwd=$passwd"
}

while IFS=";" read v_nom v_passwd
do
    creation "$v_nom"
done < liste3.txt
