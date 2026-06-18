apt-get update
apt-get remove --purge ntp chrony bind -y
apt-get install openssh-common systemd-timesyncd nano docker-ce docker-compose ansible nfs-server ansible systemd task-samba-dc sudo-samba-schema -y
systemctl enable --now sshd docker nfs-server
systemctl start sshd docker nfs-server
systemctl daemon-reload

echo "REMOVE nmcli con if exists"
