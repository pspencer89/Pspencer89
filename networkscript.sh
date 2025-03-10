#!/bin/bash

#Creates a variable called host and gives it the hostname value
host=$(hostname)
#Prints the IP adressinfo with the variable ipadd
ipadd=$(hostname -I | awk '{print$1}')
#Creates the variable DNSInfo and prints the content of the /etc/resolv.conf file
DNSINfo:$(cat /etc/resolv.conf)
#Creates the variable ports and prints open ports
ports=$(sudo netstat -tuln)
#Prints the DNS information from the variable and adds a new line
echo -e "DNS: \n$DNSInfo\n"
#Prints open port info from the established variable and uses new line
echo -e "Open Ports: \n$ports\n"
#Prints the IP adress info from variable and adds a new line
echo -e "IP Address: $ipadd\n"
#Prints the host name from the variable and adds a new line
echo -e "HostName: $host\n"

