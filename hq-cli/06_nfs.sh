mkdir -p /mnt/nfs

echo "192.168.1.2:/raid5/nfs /mnt/nfs nfs rw 0 0" >> /etc/fstab

mount -a
mount -v
