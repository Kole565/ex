apt-get update
apt-get remove --purge ntp chrony bind
apt-get install ssh systemd nano docker-ce docker-compose ansible nfs-server ansible systemd task-samba-dc sudo-samba-schema -y
systemctl enable --now sshd docker nfs-server samba
systemctl start sshd docker nfs-server samba

echo "REMOVE nmcli con if exists"
