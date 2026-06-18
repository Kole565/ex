apt-get update
apt-get install ssh systemd-timesyncd yandex-browser-stable nfs-clients nano admc sudo libsss_sudo -y
systemctl enable --now sshd systemd-timesyncd nfs
systemctl start sshd systemd-timesyncd nfs
