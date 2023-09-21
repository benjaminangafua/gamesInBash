#!/bin/bash

read -p "Enter a number: " num
flag=0
counter=2
if [ $num -eq 0 -o $num -eq 1 ]
then
	flag=1
else
	while [ $counter -le $(($num/2)) ]
	do
		if [ $(($num%$counter)) -eq 0 ]
		then
			flag=1
			break
		fi
		((Counter++))
	done
fi
