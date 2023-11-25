#!/bin/bash
 
if [ $# -gt 2 -o $# -lt 2 ]; then
   echo "The arguments didn't match the requirements"
        exit 0
else
    if [ $2 == "totalWords" ]; then
           
        wc -m students.txt  
        exit 0  
    
    elif [ $2 == "topTwo" ]; then
           
        sort -n -t ',' -k3 students.txt | tail -n 2 
        exit 0 

    elif [ $2 == "sortGrade" ]; then
           
        sort -n -t ',' -k3 students.txt
        exit 0 
         
     elif [ $2 == "names" ]; then
           
        cut -d ',' -f 1 students.txt > names.txt; cat names.txt
        exit 0 
     else
        echo "Invalid command!"
        exit 0 
     fi
fi