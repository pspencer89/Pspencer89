#!/bin/bash

# Enable IP forwarding
sudo sysctl -w net.ipv4.ip_forward=1

# Forward traffic from port 80 to port 8080
sudo iptables -t nat -A PREROUTING -i enp0s3 -p tcp --dport 80 -j REDIRECT --to-port 8080

# Save the iptables rules
sudo sh -c "iptables-save > /etc/iptables/rules.v4" 