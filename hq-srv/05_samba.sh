echo "Should be started only when br-srv require it"

echo "server=/au-team.irpo/192.168.4.2" | cat - /etc/dnsmasq.conf > tmp # Should add at the beginning
mv tmp /etc/dnsmasq.conf

systemctl restart dnsmasq

