#!/bin/bash

# This script is for checking functions

# Function to create user
function create_user {
    read -p "Write the name of user: " username
    echo "Username is $username"

    # Create the user
    sudo useradd -m "$username"

    # Set the password for the user
    sudo passwd "$username"

    echo "User $username created successfully."
}

# Function to check if a user exists
function check_user {
    read -p "Enter the username to check if it exists: " username

    # Check if user exists in /etc/passwd
    if grep -q "^$username:" /etc/passwd; then
        echo "User $username exists."
    else
        echo "User $username does not exist."
    fi
}

# Function to delete user
function delete_user {
    read -p "Enter the username to delete: " username

    # Check if user exists before attempting to delete
    if grep -q "^$username:" /etc/passwd; then
        # Delete the user and their home directory (-r flag)
        sudo userdel -r "$username"
        echo "User $username deleted successfully."
    else
        echo "User $username does not exist, so deletion cannot proceed."
    fi
}

# Loop to create multiple users
for (( i=1; i<=5; i++ ))
do
    create_user
done

# Check if a specific user exists
check_user

# Delete a specific user
delete_user

