#!/bin/sh
awk '{
	printf "%s\t", $0;
	if ($3 <= 5){
		printf "Fail\n" ;
	} else if ($3 > 5 && $3 <= 10){
	printf "Good\n";
	}else{
	printf "Very good\n" ;
	}
}' students.txt
