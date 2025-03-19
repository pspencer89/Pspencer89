#!/bin/bash

#Allow Specific IP addresses

sudo iptables -A INPUT -s 192.168.0.0/24 -j ACCEPT

#Allow certain MAC Addresses

sudo iptables -A INPUT -m mac --mac-source 01:02:03:04:05:06 -j ACCEPT

#Ignores all other traffic
sudo iptables -A INPUT -j DROP
