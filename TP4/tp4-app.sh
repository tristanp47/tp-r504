docker run -d --name tp4-app --network net-tp4 -p 5000:5000 im-tp4
if [ $? != 0 ]; then
        echo "echec de la commande docker run "
        exit 2
fi

