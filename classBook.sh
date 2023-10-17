#!/bin/bash

#The command takes a txt file
file=$(<$1)

# Tabulate number of letters
function countLetters() {
     echo "$1" | tr -cd [:alpha:] | wc -c
}

function countWords(){
    echo "$1" | wc -w
}

function countSentences(){
    echo $1 | tr -cd [".!?"] | wc -c
}

function decideGrade(){
    word=$(countWords "$file")
    letters=$(countLetters "$file")
    sentences=$(countSentences "$file") 

    L=$(echo "scale=3; $letters / $word * 100" | bc)
    S=$(echo "scale=3; $sentences / $word * 100" | bc)
  

    leftC=$(echo "0.0588 * $L" | bc)
    rightC=$(echo "0.296 * $S" | bc)

    diff=$(echo "$leftC-$rightC - 15.8" | bc)

    result=$(printf "%.0f" "$diff")
    if [ result -gt 16 ] 2>/dev/null
    then
        echo "Grade: 16+"
    else
        echo "Grade: $result"
    fi
}
decideGrade