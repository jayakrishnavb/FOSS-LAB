#!/bin/bash
echo "----------------MENU------------------"
echo " "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. EXIT"
echo " "
echo "Enter your choice:-"
read c
while [ $c -ne 5 ]
do
	case "$c" in
		1)
			echo "Enter the two numbers to be added:-"
			read a
			read b
			d=$(( $a + $b ))
			echo "Sum of $a and $b is $d"
			echo "Enter your choice:-"
			read c;;
		2)
			echo "Enter the two numbers to be subtracted:-"
			read a
			read b
			d=$(( $a - $b ))
			echo "$a-$b = $d"
			echo "Enter your choice:-"
			read c;;	
		3)
			echo "Enter the two numbers to be multiplied:-"
			read a
			read b
			d=$(( $a * $b ))
			echo "$a X $b = $d"
			echo "Enter your choice:-"
			read c;;
		4)
			echo "Enter the two numbers to be divided:-"
			read a
			read b
			d=$(( $a / $b ))
			echo "$a / $b = $d"
			echo "Enter your choice:-"
			read c;;
		*)
			echo "Invalid choice"
			echo "Enter your choice:-"
			read c;;
	esac
done		

