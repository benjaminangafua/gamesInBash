#!/bin/bash

# Data Store
declare -A contacts

function openContact(){
    echo -e "Only reply with the number that applies.\n1. Add contact\n2. View Contact\n3. Search Contact\n4. Exit";
}

function createContact(){
    read -p "Enter your name: " name
    read -p "Enter your phone number: " phone

    contacts["$name"]=$phone

    echo -e "\nAdded $name: $phone\n"
}

function promptNewContact(){
        read -p "There is no contacts. Do you want to add a new contact? Y/N " choice

        choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')
        case "$choice" in 
            y|yes)
                createContact
                ;;
            *)
                openContact
                ;;
        esac
    
}

function displayContat(){
    if [ -z "${contacts[@]}" ]
    then
    promptNewContact
    else
        for name in "${!contacts[@]}"
        do
            local phone="${contacts[$name]}"
            echo -e "$name: $phone\n"
        done
    fi
}

function searchContact(){

    if [ -z "${contacts[@]}" ]
    then
        promptNewContact
    else
        read -p "Search for name or number: " search

        for name in "${!contacts[@]}"
        do
            local phone="${contacts[$name]}"

            if [ -n "${contacts[$search]}" ]
            then
                echo -e "Contact:\n$name: $phone\n"

            elif [ "$phone" == "$search" ]
            then
                echo -e "Contact:\n$name: $phone\n"

            else
                echo "No such contact."
            fi
        done
    fi
}

while true
do
    openContact

    read action
    case "$action" in 
        1)
        createContact
        ;;
        2)
        displayContat
        ;;
        3)
        searchContact
        ;;
        4)
        echo "Thanks for the time!"
        exit 0
        ;;
        *)
        echo "Sorry, I didn't get that. Enter a valid option"
    esac
done