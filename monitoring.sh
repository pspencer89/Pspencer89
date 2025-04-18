#!/bin/bash

#Pull out IPv4 addresses from auth.log, count each time, and save to a file
sudo grep -a -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" /var/log/auth.log | sort -n | uniq -c | sort -nr > IP4_adds.txt

#Get IPv6 addresses from auth.log, count each time, and save to a file
sudo grep -a -oE "([0-9a-fA-F]{0,4}:){1,7}[0-9a-fA-F]{0,4}" /var/log/auth.log | sort -n | uniq -c | sort -nr > IP6_adds.txt

#Search for failed or successful login attempts in auth.log and save to a file
sudo grep -E "(failed|successful) login" /var/log/auth.log > login_attempts.txt

#SSH into a remote server(put any user and server where patrick@ is) and search for errors in the system log, save to a file
ssh patrick@192.168.0.68 'journalctl -p err' > remote_errors.txt

#Find files in /var/log changed in the last 10 days and their details, save to a file
sudo find /var/log -type f -mtime 10 -exec ls -l {} \; > modified_files.txt

#Find the hidden files in the entire filesystem and their details, save to a file
sudo find / -type f -name ".*" -exec ls -l {} \; > hidden_files.txt

#List detailed information about a specific file (replace #filename# with the actual file name) and save to a file
sudo ls -l  > file_details.txt
