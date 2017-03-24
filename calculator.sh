#!/bin/bash
echo "----------------MENU------------------"
echo " "
echo "01. Addition"
echo "02. Subtraction"
echo "03. Multiplication"
echo "04. Division"
echo "05. Square Root"
echo "06. Sine"
echo "07. Cosine"
echo "08. Tan"
echo "09. x^y"
echo "10. e^x"
echo "11. Natural log"
echo "12. Modulus"
echo "13. Exit"
echo " "
echo "Enter your choice:-"
read c
while [ $c -ne 13 ]
do
	case "$c" in
		1)
			echo "Enter the two numbers to be added:-"
			read a
			read b
			d=`echo "( $a + $b )" | bc -l`
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
		5)
			echo "Enter the number"
			read a
			b=`echo "sqrt($a)" |bc`
			echo "sqrt($a)= $b"
			echo "Enter your choice:-"
			read c;;
		6)
			echo "Enter angle"
			read a
			b=`echo "s( a($a) )" |bc -l`
			echo "Sine($a) = $b"
			echo "Enter your choice:-"
			read c;;
		7)
			echo "Enter angle"
			read a
			b=`echo "c(a($a))" |bc -l`
			echo "Cosine($a) = $b"
			echo "Enter your choice:-"
			read c;;
		8)
			echo "Enter angle"
			read a
			b=`echo "s($a)" |bc -l`
			d=`echo "c($a)" |bc -l`
			e=`echo " $b / $d " |bc -l`
			echo "Tan($a) = $e"
			echo "Enter your choice:-"
			read c;;
		9)
			echo "enter base"
			read a
			echo "enter exponent"
			read b
			#s=1
			#for(( i=1; i<=b; i++))
			#do
				s=$((s*a))
			#done
			s=$(($a^$b)
			echo "$a^$b = $s"
			echo "Enter your choice:-"
			read c;;
		10)
			echo "Enter the value of x:-"
			read a
			d=`echo "e($a)" |bc -l`
			echo "e^$a = $d"
			echo "Enter your choice:-"
			read c;;
		11)
			echo "Enter value :-"
			read a
			d=`echo "l($a)" |bc`
			echo "ln$a = $d"
			echo "Enter your choice:-"
			read c;;
		12)
			echo "Enter the two numbers to be divided:-"
			read a
			read b
			d=$(( $a % $b ))
			echo "$a % $b = $d"
			echo "Enter your choice:-"
			read c;;
		*)
			echo "Invalid choice"
			echo "Enter your choice:-"
			read c;;
	esac
done		

