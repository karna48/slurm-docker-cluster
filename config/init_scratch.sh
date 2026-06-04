#!/bin/bash

for current_user in /home/*; do
    current_user=$(basename "$current_user")
    echo init scratch for $current_user
    /root/mkdir2.sh /scratch/$current_user $current_user
done
