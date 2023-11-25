#!/bin/bash

# for line in $(cat ra-staff.txt); do

#     grade=$(echo "$line" | cut -d , --f 1)

#     if [ "$grade" -gt 18 ] 2>/dev/null; then
#         echo "$line"
#     fi
# done


while IFS=',' read -r line
do
    grade=$(echo "$line" | cut -d , -f 3)
    if [ "$grade" -ge 80 -a "$grade" -lt 90 ] 2>/dev/null; then
        echo "$line"
    fi
done < students.txt