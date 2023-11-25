#!/bin/bash

#1. Which of the following commands is used to find lines that have an 
# ‘o’ in the second position in a file named `essay.txt`

grep -E "^.o" essay.txt

#2. Write a command that does the following:

#     Find all files with a .csv extension recursively from the current directory
#     Count the number of lines each of these files contains
#     Sort the output from step 2. numerically

 wc -l $( find . -name "*.csv") | sort -n

#3. Explain the command below.

find creatures -name "*.dat" | grep -v unicorn

# The commands will find all .dat files in creatures except unicorn.dat


#4. Given a file named LittleWomen.txt, 
# write the command that tabulates the number of times each of the names below is mentioned?

# Jo
# Meg
# Beth
# Amy
for name in Jo Meg Beth Amy; do
    n=$(grep -ow "$name" LittleWomen.txt | wc -l)
    echo "$name name appeared: $n"
done

#5. What is the difference between grep and find?
# The difference is grep finds and prints lines in files that match a pattern. While the find command finds files or directories that match a pattern.

#6. What is the difference between these commands?

find .  -type  d 

ind . -type f 

# The below command lists all the directories in the current directory
find .  -type  d 

# The below command lists all the files in the current directory
find .  -type  f 



#6. Outline any four options used with the grep command. 

#     -i (Ignore Case):
#         Ignore case distinctions in patterns and input data.

#     -v (Invert Match):
#         Select non-matching lines, showing lines that do not contain the specified pattern.

#     -l (List):
#         Display only the names of files containing the specified pattern, not the actual matching lines.

#     -c (Count):
#         Print the count of matching lines instead of the lines themselves.

#     -n (Line Numbers):
#         Show line numbers along with matching lines.
#7.  Which of the following commands finds all txt files that contain 
# the word “searching” in the current directory.

grep "searching" $(find . -name "*.txt")

#8. Given the data below in an example file named `ra-staff.txt`, 
# write a command that sorts by Age. The goal is to print all records sorted by Age.
# Name,Age,Grade
# Alice,17,90
# Bob,16,88
# Charlie,18,92
# David,17,85
# Eve,16,87
# Frank,18,94
# Grace,17,89
# Hannah,16,91
# Isaac,18,93

sort -n -t ',' -k2 ra-staff.txt

#9. Write a loop that prints from 10 to 1.
# Using until

num=10
until [ num -lt 1 ]
do
    echo "$num"
    ((num--))
done

#10. I want to store an output of the command ls to some variable. 
# Which of the following formats inserts a command’s output that I can use?
#  $([command])

#11. Given the data below in an example file named `students.txt`,
#  write a command that prints the Age and the Grade fields only.
# The goal is to print all records for Age and Grade.

# Name,Age,Grade,Course
# Alice,17,90,MATH107
# Bob,16,88,ENG101
# Charlie,18,92,PHED101
# David,17,85,FACC101
# Eve,16,87,DIGITAL108
# Frank,18,94,MATH107
# Grace,17,89,DIGITAL108
# Hannah,16,91,CS101
# Isaac,18,93,NETW101

cut -d , -f 2-3 students.txt

# The cut command extracts a portion of a give field. The -d , stands for the delimiter that separates 
# the column and -f 2-3 stands for the number of columns to return

#12. Out line any three options used with the find command.
#     -name pattern:
#         Search for files and directories with a specific name (case-sensitive).

#     -iname pattern:
#         Search for files and directories with a specific name (case-insensitive).

#     -type type:
#         Specify the type of files to search for (e.g., -type f for regular files or -type d for directories).

