sudo iptables -A INPUT -p tcp --dport 23 -j DROP

sudo sh -c "iptables-save > /etc/iptables/rules.v4"