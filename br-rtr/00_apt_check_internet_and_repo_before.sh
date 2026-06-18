apt-get update
apt-get remove --purge ntp chrony -y
apt-get install iptables-persistent frr ssh systemd nano -y
systemctl enable --now frr sshd systemd-timesyncd
systemctl start frr sshd systemd-timesyncd
