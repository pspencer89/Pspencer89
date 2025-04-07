#!/bin/bash
#Script to take snapshots of users

timestamp=$(date +"%Y%m%d%H%M")
CurrentUsers="Online_$timestamp.txt"
awk -F":" '{print $1}' /etc/passwd > $CurrentUsers
cat $CurrentUsers
