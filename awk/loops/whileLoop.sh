#!/bin/sh
# A while loop that prints from  1 to 100
awk ' BEGIN {
	counter=1
	while (counter <=100){
		printf ("%d\n", counter)
		counter++
	}
}'
