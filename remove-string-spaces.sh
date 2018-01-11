#!/bin/bash -

# My solution
echo $1 | sed 's/ //g'

# Other nice ones
echo ${1// /}
echo $1 | tr -d ' '
