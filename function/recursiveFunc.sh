#!/bin/bash

#A recursive function is used to call itself
# 1, 2, 3

recurs(){
	echo "Entery $1"
	if [ $1 -le 2 ]
	then
		recurs $(($1+1))
	fi
	echo "Exit $1"
}
recurs 1
