#!/bin/bash
c=0.0
ps -ux | cut -d " " -f3,4,5,6,7 | sort -k 3 | cat > kil
cat kil
i=1
while [ 1 ]
do 
	c=$( tail -n $i < kil| cut -d " " -f5 )
	echo $c
	if [[ $c > 1.0 ]]
	then
		d=$(tail -n $i < kil | head -n 1 | cut -d " " -f1)
		kill $d
	else
		exit
	fi
	i=$(( $i + 1 ))
done
