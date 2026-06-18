useradd net_admin -m -u
passwd net_admin
echo "net_admin	ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

echo "Port 2026" >> /etc/ssh/sshd_config
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
echo "AllowUsers net_admin" >> /etc/ssh/sshd_config
echo "MaxAuthTries 2" >> /etc/ssh/sshd_config
echo "Banner /root/banner" >> /etc/ssh/sshd_config

echo "Authorized access only" >> /root/banner

systemctl restart sshd
