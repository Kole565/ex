apt-get update
apt-get install iptables-persistent dnsmasq frr ssh chrony nginx nano -y
systemctl enable --now dnsmasq frr sshd chrony nginx
systemctl start dnsmasq frr sshd chrony nginx
