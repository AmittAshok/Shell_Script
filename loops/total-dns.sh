#!/bin/bash
#
<< Details
	This code will show number of DNS server in system
Details

for file in /etc/*
do 
	if [ "${file}" = "/etc/resolv.conf" ];then
		countnameserver=$( grep -c nameserver /etc/resolv.conf   )
		echo " Total number of DNS sever is ${countnameserver}"
		break
	fi
done
