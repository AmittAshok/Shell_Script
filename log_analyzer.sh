#!/bin/bash
#
<< Details
          This is log analyzer code,where we inspect the code for clairty 
Details

     if [ $# -eq 0 ];then
	     echo " Enter the source path or file"
	     exit 1
     fi

     log_file=$1

     function error_count(){
	                
			grep -e 'error' -e 'failed' -i "$log_file" >> error_log.txt
		
		}


     error_count

