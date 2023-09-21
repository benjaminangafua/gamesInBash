#!/bin/bash

# An array of numbers

list=(1 2 3 4 5 6 7)

for n in ${list[*]}
do
	echo "Waiting to break "
	if [ $n -eq 5 ]
	then
		# break
		continue
	fi
	 echo "$n"
done

num=0

while [ $num -lt ${#list[@]} ]
do
	 echo "While is printing: ${list[$num]}"
	((num++))
done

for  n in  1 2 3 4 5 6 7 8 
do

	echo $n

done

for dir in $*
do 
	 mkdir $dir
done

dir_list=(ben pics album)
for dir in ${dir_list[*]}
do
	mkdir $dir
done
