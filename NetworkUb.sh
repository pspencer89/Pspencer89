#!/bin/bash
#Create an outputfile
outputfile="networkinginfo.txt"
#Choose info you want in file
{
	#Prints DNS Info 
	echo "DNS Info:"
		#Command to show DNS information
		cat /etc/resolv.conf
	#Prints Open Ports in file
	echo "Open Ports:"
		#Command to show open ports in our system
		sudo netstat -tuln
	#Prints IP Address in file
	echo "IP Address:"
		#Command to display all IP info
		ip a
	#Prints Host Name in file
	echo "Host Name:"
		#Command to display host name
		hostname
}>$outputfile

