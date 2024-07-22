#!/bin/bash
#
<< details
In this code you have to give path of file then code check which type file is this!!!!
usage = Provide path of file 
details

# check if user provide file name or not
#
  if [ $# -eq 0 ];
  then
	  echo " Kindly enter the file name which you want to check "
	  exit 1
  fi

  file_name="$1" # add file in variable file_name

if [ -e "$file_name" ]; then  # check if file exit
	  if [  -f "$file_name" ]; then # check file is regular
	         echo " File is regular file"
	 elif [ -d "$file_name" ]; then # check if file is directory
		 echo " File is directory type file"
	 else
		 echo " This is differnet kind of file "
	 fi
 
         else 
                 echo  "Given file does not exist"
         exit 1
fi # end if statement here 
