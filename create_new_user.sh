#!/bin/bash
#
# Create new user by taking input from user
#
#
    echo " Please enter user name : "
    read username

    sudo useradd -m $username

    echo " $username added sucessfully on $(date) "
