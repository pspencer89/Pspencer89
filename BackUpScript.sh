#!/bin/bash

#Select the directories to back up
important_dirs=(
    "/var/log"
    "/etc"
)

#Name and make the backup directory
backup_dir="/shared/backups"
sudo mkdir -p $backup_dir

#Create a timestamp
timestamp=$(date +"%m%d%Y%H%M")

#Create a name for the backup file 
backup_file="$backup_dir/backup_$timestamp.tar.gz"

#Perform the backup and compress the files
sudo tar -czf $backup_file ${important_dirs[@]}

#Display a message that the backup is complete
echo "Backup completed. Backup FileName: $backup_file"
