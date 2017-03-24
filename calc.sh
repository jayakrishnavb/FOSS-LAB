#!/bin/bash
while 
	echo "=========================MENU==================="
	echo "1.Addition"
	echo "2.subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Modulus"
	echo "6.sine"
	echo "7.cosine"
	echo "8.Tan"
	echo "9.exp"
	echo "10.ln"
	echo "11.squareroot"
	echo "12.power"
	echo "Enter your choice"
	read a
		case $a in 
				1) 
					echo "Enter any two numbers"
					read b
					read c
					s=`echo "$(( $b + $c ))" | bc -l`
					echo "sum of $c and $b is $s";;
				2) 
					echo "Enter any two numbers"
					read b
					read c
					s=`echo "$(( $b - $c ))" | bc -l`
					echo "Difference of $c and $b is $s";;
				3)
					echo "Enter any two numbers"
					read b
					read c
					s=`echo "$(( $b * $c ))" | bc -l`
					echo "product of $c and $b is $s";;
				4)
					echo "Enter any two numbers"
					read b
					read c
					s=`echo "$(( $b / $c ))" | bc -l`
					echo "quotient of $c and $b is $s";;
				5)
					echo "Enter any two numbers"
					read b
					read c
					s=$(( $b % $c ))
					echo "Modulus of $c and $b is $s";;
				6)
					echo "Enter any  numbers"
					read b
					c=`echo "(s($b))" | bc -l`
					echo "sine of $b is $c";;
				7)
					echo "Enter any  numbers"
					read b
					c=`echo "(c($b))" | bc -l`
					echo "cosine of $b is $c";;
				8)
					echo "Enter any  numbers"
					read b
					c=`echo "(s($b) / c($b))" | bc -l`
					echo "Tangent of $b is $c";;
				
				9)
					echo "Enter any  numbers"
					read b
					c=`echo "(e($b))" | bc -l`
					echo "e^$b is $c";;
				10)
					echo "Enter any  numbers"
					read b
					c=`echo "(l($b))" | bc -l`
					echo "Natural logarithm of $b is  $c";;
					
				11)
					echo "Enter any  numbers"
					read b
					c=`echo "(sqrt($b))" | bc -l`
					echo "square root of $b is  $c";;
				12)
					echo "Enter any  numbers"
					read b
					read d
					c=`echo "($b ^ $d)" | bc -l`
					echo "$b ^ $d is $c";;
			
			
				*) 
					echo "Invalid choice";;
		
		esac
			
	echo "press y to continue"
	read f		
	[ "$f" == "y" ]
do :;
done

