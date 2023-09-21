#!/bin/bash
#A basic times table
read -p "Enter number: " num
counter=1

while [ $counter -lt 13 ]
do
	multiply=$(($num*$counter))
 	echo "$num X $counter = $multiply"
	((counter++))
	
done
