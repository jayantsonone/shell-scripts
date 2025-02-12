#!/bin/bash

# this script is for checking updates
# and also to update it
# and also install new package

echo "updating and upgrading packages"

sudo apt-get update>/dev/null

sudo apt-get upgrade>/dev/null

echo "installing package $1"

sudo apt-get install -y "$1">/dev/null

