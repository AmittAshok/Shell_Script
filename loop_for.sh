#!/bin/bash
#
#
<< Comment 

	Creating folder by taking arguments from user
        argument 1 is folder name
	argumnet 2 is starting range
	argument 3 is ending range   
Comment


for (( num=$2; num<=$3; num++  ))
    do
	    mkdir "$1$num"
    done
