#!/bin/bash
#
#
  if [ $# -eq 0 ];
  then
	  echo " Kindly enter the file name "
	  exit 1
  fi

  file_name="$1"
if [ -e "$file_name" ]; then  # check if file exit
	  if [  -f "$file_name" ]; then # check file is regular
	         echo " File is regular file"
	 elif [ -d "$file_name" ];
	 then
		 echo " File is directory type file"
	 else
		 echo " This is differnet kind of file "
	 fi
 
         else 
                 echo  "This file does not exist"
         exit 1
          fi
