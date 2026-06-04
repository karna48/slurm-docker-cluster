#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <path> <user>"
    exit 1
fi
 
PATH_ARG="$1"
USER_ARG="$2"
 
# Create the directory
mkdir -p "$PATH_ARG"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory $PATH_ARG"
    exit 1
fi
 
# Change ownership to user:user
chown "$USER_ARG:$USER_ARG" "$PATH_ARG"
if [ $? -ne 0 ]; then
    echo "Error: Failed to change ownership to $USER_ARG:$USER_ARG"
    exit 1
fi
