#!/bin/bash
d=0.0
while [ 1 ]
do
	sleep 1
	d=` ps -ux | tr -s ' ' | cut -d " " -f3,4,5,6,7|sort -k 3|tail -n 1|cut -d " " -f5 `
	echo $d
	if [[ $d > 3.5 ]]
		then
			k=`ps -ux | tr -s ' ' | cut -d " " -f3,4,5,6,7|sort -k 3|tail -n 1|cut -d " " -f1`	
			echo "killin process $k"
			kill $k
		else 
			echo "check"
		
	fi
done
