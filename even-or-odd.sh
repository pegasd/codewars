#!/bin/bash

if [[ $(($1 % 2)) -eq 0 ]]
then
    echo 'Even'
else
    echo 'Odd'
fi
