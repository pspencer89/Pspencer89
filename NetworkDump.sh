#!/bin/bash

#Purpose of File

purpose="info_dump"

#Get the current date
TodaysDate=$(date +"%m-%d-%Y")

#Name of output file
OutputFile="${TodaysDate}_${purpose}.txt"

#Get Network Info
{
#Prints Network Info with todays date
echo "Network Info - $(date)"
#Prints IP Adresses
echo  "IP Adresses:"
	#Displays IP address information
	ip a
#Prints DNS Server
echo "DNS Server:"
	#Displays information about the DNS Server
	cat /etc/resolv.conf
#Prints Open Ports
echo "Open Ports:"
	# Displays open TCP and UDP ports
	ss -tuln
#Prints Routing Table
echo "Routing Table:"
	#Displays  Network Traffic
	netstat -r
#Prints ARP
echo "ARP:"
	#Displays IP addresses to MAC addresses on our naetwork
	arp -a
} > "$OutputFile"

echo "Info has been sent to $OutputFile"
