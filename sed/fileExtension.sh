#!/bin/bash

ls ../conditionals > extension.txt
ls ../'sort' >> extension.txt

while read lineInFile
do
	echo $lineInFile | sed 's/.*\.//'
done < extension.txt
