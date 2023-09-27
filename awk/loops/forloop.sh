#!/bin/sh
# Print from 1 to 10

awk ' BEGIN {
	for (i=1; i<=10; i++){
		printf ("%d\n", i);
	}
}'
