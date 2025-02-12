#!/bin/bash

<<info
Script for adding a user with arguments
info

# Check if two arguments are passed
if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <password>"
    exit 1
fi

# Create the user with the specified username
sudo useradd -m $1

# Set the password for the user
echo -e "$2\n$2" | sudo passwd $1

# Confirm user creation and password setup
echo "User $1 created and password set."

