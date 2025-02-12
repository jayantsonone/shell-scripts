#!/bin/bash

# Step 1: Displaying what the script will do
echo "This script will create a user, check if it was created, and then delete the user."

# Step 2: Checking for the correct number of arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Get the username from the argument
USERNAME=$1

# Step 3: Create the user
echo "Step 3: Creating user $USERNAME..."
sudo useradd -m $USERNAME

# Step 4: Check if the user is created by checking /etc/passwd
if grep -q "^$USERNAME:" /etc/passwd; then
    echo "Step 4: User $USERNAME created successfully!"
else
    echo "Step 4: Failed to create user $USERNAME."
    exit 1
fi

# Step 5: Delete the user
echo "Step 5: Deleting user $USERNAME..."
sudo userdel -r $USERNAME

# Step 6: Verify that the user was deleted
if ! grep -q "^$USERNAME:" /etc/passwd; then
    echo "Step 6: User $USERNAME has been deleted successfully!"
else
    echo "Step 6: Failed to delete user $USERNAME."
    exit 1
fi

echo "Script completed successfully."

