#!/bin/bash

#user defined variables
hero="rancho"
villan="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villan hai $villan"

#shell/environment variables

echo "current logged in user is $USER"

#user input
read -p "rancho ka pura naam kaya tha "   fullname

echo "uska pura naam tha $fullname"

#arguments

echo "movie ka naam $0"

echo "1st idiot $1"
echo "2nd idiot $2"
echo "3rd idiot $3"
echo "here the 3 idiots are $@"
echo "the total no of idiots $#"
