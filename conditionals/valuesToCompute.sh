#!/bin/bash
arithmatic(){
	echo "Enter two numbers"
	read -p "Number1: " n1
	read -p "Number2: " n2
	echo "Enter an operation: A, S, M, D"
	read -p "Enter operation: " op

	source myFunc.sh
	compute $n1 $n2 $op
	echo "Script successfully executed."
}
arithmatic
