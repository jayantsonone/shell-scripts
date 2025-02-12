#!/bin/bash

# this script is to delete extra user

cat /etc/passwd | tail -n 3 | awk $1 | sudo serdel $1 

echo " $1 user deleted"

