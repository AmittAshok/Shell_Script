#!/bin/bash
#
# find greater number
#
# check if user input the numbers
  if [ $# -eq 0 ]; then
	 echo " Please enter the numbers "
	 exit 1
  fi

  num1=$1
  num2=$2
  num3=$3

  if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
		  echo " $num1 is greater Number "
	  
	  elif [ "$num2" -gt "$num1" ] && [ "$num2" -gt "$num3" ]; then
			  echo " $num2 is greater Number"
		else
			  echo " $num3 is greater Number "
		  
  fi	
  				
