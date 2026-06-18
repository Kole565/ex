echo "Change sudoOption to !authenticate"
echo "Change sudoCommand to /bin/cat; /bin/grep; /usr/bin/id"
kinit administrator
admc

control sudo public

echo "Add sudo to services and 'sudo_provider = ad' (Press any key)"
read -p
nano /etc/sssd/sssd.conf

echo "Add 'sudoers: files sss' (Press any key)"
read -p
nano /etc/nsswitch.conf

rm -rf /var/lib/sss/db/*
sss_cache -E
systemctl restart sssd

reboot

