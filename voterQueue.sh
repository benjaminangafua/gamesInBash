#!/bin/bash
voterBook=$(<voters.csv) 

for i in $(cat voters.csv)
do
    letters=$(echo "$i" | grep -i[ a-d ] )
    echo "$letters"
done