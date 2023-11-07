#!/usr/bin/bash
for a in *.dbml
do
	name=${a%.dbml}
	echo "processing $name"
	dbml2sql $a --mysql > $name.sql
	dbml-renderer -i $a.dbml -o $a.svg
done
