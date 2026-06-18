echo "Verify this script carefully before start"

echo "nameserver 192.168.1.2" > /etc/resolve.conf

rm -rf /etc/samba/smb.conf

echo "192.168.4.2 br-srv.au-team.irpo" >> /etc/hosts

echo "Add 'server=/au-team.irpo/192.168.4.2' to hq-srv dnsmasq.conf (may use script there)"

samba-tool domain provision
mv -f /var/lib/samba/private/krb5.conf /etc/krb5.conf

systemctl enable samba # should already be done at 00

samba-tool domain info 127.0.0.1

reboot
