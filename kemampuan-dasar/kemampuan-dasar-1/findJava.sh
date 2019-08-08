#!/bin/bash
var="$1"
if [ ! -n "$var" ];
then
	directory=`ls -R`
	echo "Daftar Direktori dan File = $directory"
	find=`locate -i "*.java"`
	echo "Terdapat variable java pada = $find "
else
	directory=`ls -R`
        echo "Daftar Direktori dan File = $directory"
	find=`locate -i $1*.java`
	if [ -z "$find" ];
	then
		echo "Tidak terdapat file java"
	else
		echo "Terdapat variable java pada $var = $find "
	fi
fi
