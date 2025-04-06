#!/bin/bash
#Script to take snapshots of users
timestamp=$(date +"%m%d%Y%H%M")
CurrentUsers="Online_$timestamp.txt"
awk -F":" '{print $1}' /etc/passwd > $CurrentUsers
cat $CurrentUsers
