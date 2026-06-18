systemctl disable --now chronyd # Just in case, should be handles at 00

echo "NTP=192.168.1.1" >> /etc/systemd/timesyncd.conf

systemctl enable --now systemd-timesyncd
systemctl start systemd-timesyncd

timedatectl timesync-status # May add sleep before, but command in history is good enough
