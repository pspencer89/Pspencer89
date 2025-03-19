#!/bin/bash

#Create rule to block ping
sudo iptables -A OUTPUT -p icmp -m icmp --icmp-type echo-request -j DROP
#Save changes
sudo sh -c "iptables-save > /etc/iptables/rules.v4"

