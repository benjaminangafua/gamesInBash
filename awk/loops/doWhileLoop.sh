#!/bin/sh

# A while loop to prints from 8 to 1

awk 'BEGIN {
	count=8
	do{
	
	printf("%d\n", count);
	count--
	}while(count>0)

	}
'

