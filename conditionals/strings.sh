#!/bin/bash

# Accept two names from the user. If first name is not null then check whether both the names are the same and print appropriate message

read -p "Enter first name: " firstName
read -p "Enter last name: " lastName

if [ $firstName ]
then

	if [ $firstName = $lastName ]
	then
		echo "The names are the same"
	else
		echo "The names are not the same"
	fi
else
	echo "First name does not exist"

fi

