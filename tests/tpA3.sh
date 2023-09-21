#!/bin/bash
deb=$1
fin=$2

if [ "$deb" == "" ]
then
	deb="5"
fi

if [ "$fin" == "" ]
then
	fin=$(($deb + 10))
fi

for ((i = $deb ; i <= $fin ; i++));
do
  echo "$i"
done
