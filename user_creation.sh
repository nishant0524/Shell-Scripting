#!/bin/bash

limit=$1

shift

for (( num=1 ; num<=$limit ; num++ ))
do
        if [[ -z ${!num} ]];
        then
                echo "No arguement passed for last username!!!"
        else
                if ! sudo useradd -m ${!num}; then
                        continue
                fi
                echo "User : ${!num} is added successfully!!"
        fi
done
