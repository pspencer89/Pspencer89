#!/bin/bash

#Command to deny incoming packets to telnet(port 23)
sudo iptables -A INPUT -p tcp --dport 23 -j DROP

#Save Changes
sudo sh -c "iptables-save > /etc/iptables/rules.v4"
