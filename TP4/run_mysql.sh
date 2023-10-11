#set -x
docker run --rm  -d \
  -p 3307:3306 \
  -v vol-sql-demo:/var/lib/mysql \
  --name tp4-sql \
  --env MYSQL\_ROOT\_PASSWORD=foo \
  --network net-tp4 \
  mysql
if [ $? != 0 ]; then
        echo "echec de la commande docker run"
        exit 2
fi

