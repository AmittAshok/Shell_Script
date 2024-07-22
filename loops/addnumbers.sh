#!/bin/bash
#
<< Add
 Adding given number and show sum of it
Add


if [ $# -eq 0 ];then
	echo " Please enter the numbers "
	exit 1
fi

# intialize the variable
    sum=0


for arg in "$@"
do
	sum=$(( sum + arg)) # add current argument
done
echo " The sum of all numbers is :$sum "

