#!/bin/bash

# Allow incoming MySQL traffic
sudo iptables -A INPUT -p tcp --dport 3306 -j ACCEPT

# Save the iptables rules
sudo sh -c "iptables-save > /etc/iptables/rules.v4"
