useradd sshuser -m
passwd sshuser
usermod sshuser -G wheel

echo "Port 2026" >> /etc/openssh/sshd_config
echo "PermitRootLogin no" >> /etc/openssh/sshd_config
echo "AllowUsers sshuser" >> /etc/openssh/sshd_config
echo "MaxAuthTries 2" >> /etc/openssh/sshd_config
echo "Banner /root/banner" >> /etc/openssh/sshd_config

echo "Authorized access only" >> /root/banner

systemctl restart sshd

echo "MANUALLY REMOVE COMMENT ON WHEEL_USERS at sudoers"
