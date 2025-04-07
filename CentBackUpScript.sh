#!/bin/bash


# Define the directories to back up
important_dirs=(    
    "/var/log"
    "/etc"
)

#Name and make the backup directory
backup_dir="/shared1/backups"
sudo mkdir -p $backup_dir

#Create a timestamp
timestamp=$(date +"%m%d%Y%H%M")

#Name the backup file
backup_file="$backup_dir/backup_$timestamp.tar.gz"

#Perform the backup and compress the files
sudo tar -czf $backup_file ${important_dirs[@]}

#Tell the user that the backup is complete
echo "Backup completed successfully. Backup file: $backup_file"
