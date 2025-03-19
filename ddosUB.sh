#!/bin/bash

#tells IPtables to drop (refuse) empty tcp packets
sudo iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

#blocks new TCP connections that are not SYN packets
sudo iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP

#block TCP pakets with all flags set(SYN, ACK, FIN, RST, URG, PSH)
sudo iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

#Save the iptables rules
sudo sh -c "iptables-save > /etc/network/iptables"
