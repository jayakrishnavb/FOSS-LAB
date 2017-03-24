#!/bin/bash
a=$1
b=$2
echo -e "\n"
if [ "$#" -eq 2 ]
then
	if test -f "$1"
	then
		if grep -Fxq "$2" $1
		then
			echo "$2 already exists"
		else
			echo "$2" >> $1
		fi
	else
		echo "$1 named file is not existing"
	fi
else
	echo " Invalid number of arguments"
	exit 1
fi
