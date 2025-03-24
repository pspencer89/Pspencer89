#!/bin/bash

#Function to look for changes in a directory
whats_new() {
    local DIR=$1
    local original=$2
    local rightnow=$3

    sudo ls -lR $DIR > $rightnow
    echo "Here's what has changed in $DIR:"
    sudo colordiff $original $rightnow
    sudo cp $rightnow $original
}

#find potential changes in /varlog/
whats_new "/var/log" "/tmp/original_var_log.txt" "/tmp/rightnow_var_log.txt"

#find potential in /etc
whats_new "/etc" "/tmp/original_etc.txt" "/tmp/rightnow_etc.txt"
