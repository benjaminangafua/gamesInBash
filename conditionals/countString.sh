#!/bin/bash
# Count words in a string

str="This is a script using for loop"
counter=1
for word in $str
do
	echo  "$counter: $word"
	counter=$(($counter+4))
done

echo "Length is: ${#str[@]}"
