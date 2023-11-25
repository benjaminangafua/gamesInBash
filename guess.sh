#!/bin/bash

numT=$((RANDOM % 100 + 1))
count=5

while [ $count -gt 0 ]
do
    read -p "Enter your guess: " guess 
    if [ $guess -gt $numT ]; then
        echo "Your guess $guess is too high"
        ((count--))
    elif [ $guess -lt $numT ]; then

        echo "Your guess $guess is too Low"
        ((count--))
    else
        echo "Congrats"
        break
    fi
done
echo "The guess was: $numT"

# sort -n ra-staff.txt | head -n 1 && tail -n 2 ra-staff.txt