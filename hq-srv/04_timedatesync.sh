echo "NTP=192.168.1.1" >> /etc/systemd/timesyncd.conf

timedatectl set-local-rtc 0

systemctl enable --now systemd-timesyncd
systemctl restart systemd-timesyncd

timedatectl timesync-status # May add sleep before, but command in history is good enough
