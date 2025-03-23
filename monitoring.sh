#!/bin/bash

#Pull out IPv4 addresses from the authentication log, count each time, and save to a file
sudo grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" /var/log/auth.log | sort -n | uniq -c | sort -nr >IP_adds.txt

#Search for failed or successful login attempts in the authentication log and save to a file
sudo grep -E "(failed|successful) login" /var/log/auth.log > login_attempts.txt

#SSH into a remote server and search for errors in the system log, save to a file(Put any user instead of patrick@192.168.0.90)
sudo ssh patrick@192.168.0.68 'grep "error" /var/log/syslog' > remote_errors.txt

#Find files in /var/log changed in the last 10 days and their details, save to a file
sudo find /var/log -type f -mtime 10 -exec ls -l {} \; > modified_files.txt

#Find the hidden files in the entire filesystem and their details, save to a file
sudo find / -type f -name ".*" -exec ls -l {} \; > hidden_files.txt

#List detailed information about a specific file (replace #filename# with the actual file name) and save to a file
sudo ls -l > file_details.txt
