echo "l'utilisateur courant $USER"
if [ "$1" == "$USER" ]
then
	echo "OUI"
else
	echo "NON"

fi

if [ $1 == ""]
then
	echo "vous avez oublié l'argument"
fi
