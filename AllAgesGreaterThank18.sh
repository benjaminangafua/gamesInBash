#!/bin/bash
# $(cut -d , -f 1 ra-staff.txt | tail -n  5 > num.txt)

# IFS - a type of delimitor (Internal Field Seperator)
# /dev/null is a special device file in Unix-like operating systems (including Linux)
#  that serves as a data sink or a bit bucket. When you send data to /dev/null, it effectively 
# disappears and is discarded without being stored anywhere. 
# It's often used to discard unwanted output or to suppress output when running commands.

# for line in $(cat ra-staff.txt)
# do
#     age=$(echo $line | tail -n 5 | cut -d , -f 1 )
#     if [ "$age" -gt 18 ] 2>/dev/null
#     then
#     echo "$line"
#     fi
# done


while read -r line
do
    age=$(echo "$line" | cut -d ',' -f 1 | tail -n 5)

    # Only write code below this line
    if [ "$age" -gt 18 ] 2>/dev/null
    then
        echo "$line"
    fi
    
    # Only write code above this line
done < ra-staff.txt

# The -r option is used with the read command to prevent it 
# from interpreting backslashes as escape characters.

# Example: This is a line with a newline character: \n
# Without -r, the example will be splited into two considering \n as a new line instead of a literal character