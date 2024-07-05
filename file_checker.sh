#!/bin/bash
#
# checking if file is exist in system

# check if user input the file name
if [ $# -eq 0 ];
then
	echo " kindly enter the file name "
	exit 1
fi

# check file access
   file_name=$1

   if [ -e "$file_name"  ] && [  -w "$file_name" ];

   then
	   echo " File is present with write access "

   elif [ ! -w "$file_name" ] && [ -x "$file_name" ];
   then

	  echo " file is presnet with execute access" 
  else
	  echo " file is not present at this path "
   fi

# list the file
#
   ls -l "$file_name"

