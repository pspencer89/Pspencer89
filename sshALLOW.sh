#!/bin/bash

# Allow SSH using iptables
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Save the iptables rules
sudo sh -c "iptables-save > /etc/iptables/rules.v4"
