apt-get update
apt-get remove --purge ntp chrony -y
apt-get install dnsmasq openssh-common systemd-timesyncd nano apache2 php8.2 apache2-mod_php8.2 mariadb-server php8.2-opcache php8.2-curl php8.2-gd php8.2-intl php8.2-mysqli php8.2-xml php8.2-xmlrpc php8.2-ldap php8.2-zip php8.2-soap php8.2-mbstring php8.2-json php8.2-xmlreader php8.2-fileinfo php8.2-sodium nfs-server -y
systemctl enable --now dnsmasq sshd httpd2 mysqld nfs-server
systemctl start dnsmasq sshd httpd2 mysqld nfs-server
systemctl daemon-reload
