#!/bin/bash
# Find the factorial of a number

read -p "Enter a factorial number: " num
counter=1
while [ $counter -le $num ]
do
	temp=$counter
	fac=1
	while [ $temp -ge 1 ]
	do
		fac=$(($fac * $temp))
		((temp--))
	done
	echo $fac
	((counter++))
done
