#!/bin/bash
# Arguments: num1 operator num2

compute (){
if [ $3 = 'A' ]
then
	echo "$1 + $2 = $(($1+$2))"
elif [ $3 = 'S' ]
then
	echo "$1 - $2 = $(($1-$2))"
elif [ $3 = 'M' ]
then
	echo "$1 X $2 = $(($1*$2))"
elif [ $3 = 'D' ]
then
	echo "$1 / $2 = $(($1/$2))"
else
	echo "Invalid operator"
fi
}
