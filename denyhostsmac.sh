#!/bin/bash

#Block a range of IP Addresses
sudo iptables -A INPUT -s 192.168.1.0/24 -j DROP

#Block specific MAC Address 
sudo iptables -A INPUT -m mac --mac-source 00:12:34:56:78:90 -j DROP
