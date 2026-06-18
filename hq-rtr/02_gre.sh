cat ./gre.conf >> /etc/network/interfaces

systemctl restart networking

echo "SET ROUTING MODE to yes on frr"
