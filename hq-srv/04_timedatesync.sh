systemctl disable --now chronyd # Just in case, should be handled at 00

timedatectl set-local-rtc 0

systemctl enable --now systemd-timesyncd
systemctl restart systemd-timesyncd

timedatectl timesync-status # May add sleep before, but command in history is good enough

echo "NTP=192.168.1.1" >> /etc/systemd/timesyncd.conf
systemctl restart systemd-timesyncd
