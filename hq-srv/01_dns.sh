cp ./dns_dnsmasq.conf /etc/dnsmasq.conf

echo "192.168.1.1	hq-rtr.au-team.irpo" >> /etc/hosts

systemctl restart dnsmasq
