#!/usr/bin/bash
conter1=0
conter2=0
for i in {1..500}
do
	reponse=$(curl -s http:/localhost:83)
	if [ "$reponse" = "<h1>Hello 1</h1>" ]; then
		conter1=$((conter1 + 1))
	fi

	if [ "$reponse" = "<h1>Hello 2</h1>" ]; then
                conter2=$((conter2 + 1))
        fi
done

echo "Requête du nginx1 $conter1"
echo "Requête du nginx2 $conter2"
