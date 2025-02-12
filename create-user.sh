#!/bin/bash

<<info 
this script is for create user 
and also add user 
to a group
info

function user_add {
	echo "======== creation of user started ========"

read -p "enter the username " username

read -p "enter the password " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "======== creation of user done ========"

}

function check {
	if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "User is deleted "
else
	echo "user is created "
fi
}


function delete {

	sudo userdel "$username"

	echo " created user deleted successfully " $username

}

user_add
check
delete
