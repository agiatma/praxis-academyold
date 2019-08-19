#!/bin/bash
var="$1"
if [ ! -n "$var" ];
then
	directory=`ls -R`
	echo "Daftar Direktori dan File = $directory"
	find=`find -name *.java`
	if [ -z "$find" ];
        then
                echo "Tidak terdapat file java"
        else
                echo "Terdapat file java pada $var = $find "
        fi
else
	directory=`ls -R`
        echo "Daftar Direktori dan File = $directory"
	find=`find $var -name *.java`
	if [ -z "$find" ];
	then
		echo "Tidak terdapat file java pada $var"
	else
		echo "Terdapat variable java pada $var = $find "
	fi
fi

