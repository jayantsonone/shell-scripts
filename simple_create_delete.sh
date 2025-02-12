#!/bin/bash

<<info
creating user and also
deleting user in
my style
info

#creating user

sudo useradd -m "$1"

echo "creating user with username "$1""

#searching user

grep -q "$1" /etc/passwd

echo "searching if user was created"

#deleting user

sudo userdel -r "$1"

echo "user deleted successfully"
