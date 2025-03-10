#!/bin/bash
 
#How to get Network Info


#Print Network Info and the current date and time
echo "Network Info - $(date)"
#Prints a blank line to make it easier to read
echo ""
#Prints IP Address 
echo "IP Address:"
	#Displays info of all network interfaces
	ip a

echo ""

#Prints Routing Table
echo "Routing Table"
	#Displays routing table
	netstat -r

echo ""

#Prints DNS Server
echo "DNS Server"
	#Displays the contents of the file that contains the DNS server info
	cat /etc/resolv.conf

echo ""

#Prints Open Ports:
echo "Open Ports:"
	#Shows all open TCP and UDP ports
	ss -tuln
echo ""

#Prints ARP
echo "ARP:"
	#Displays IP address based on MAC Address
	arp -a
