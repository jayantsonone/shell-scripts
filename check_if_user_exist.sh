#!/bin/bash

#this is to check the user

read -p "enter the username : " username 

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo "user doesn't exist"
else
	echo "user exist"
fi


