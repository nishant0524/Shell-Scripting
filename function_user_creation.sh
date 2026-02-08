#!/bin/bash


function create_user()
{
        num=1
        while [[ -n ${!num} ]]
        do
                username=${!num}
                sudo useradd -m $username
                echo "User: $username added successfully!"
                ((num++))
        done
}

create_user "User1" "User2" "User3"
