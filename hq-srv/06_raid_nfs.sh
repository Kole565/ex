echo "RAID already done for some reason:"
lsblk

mkdir /raid5/nfs
chown 99:99 /raid5/nfs
chmod 777 /raid5/nfs

echo "/raid5/nfs 192.168.2.0/28 rw,no_subtree_check" >> /etc/exports

exportfs -a
systemctl restart nfs
