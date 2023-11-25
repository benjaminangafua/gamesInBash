#!/bin/bash
for line in $(cat students.txt)
do
    # echo "$line"
    grade=$(echo "$line" | cut -d , -f3)
    if [ "$grade" -ge 80 -a "$grade" -lt 90 ] 2>/dev/null
    then
    echo "$line"
    fi
done