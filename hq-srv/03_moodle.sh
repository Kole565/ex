echo "Mariadb secure installation:"
mysql_secure_installation

mariadb -u root -p < moodle_init.sql

rm /var/www/html/index.html

curl -L https://github.com/moodle/moodle/archive/refs/tags/v4.5.0.zip > /root/moodle.zip
unzip /root/moodle.zip -d /var/www/html
mv /var/www/html/moodle-4.5.0/* /var/www/html

mkdir /var/www/moodledata
chown apache2:apache2 /var/www/html
chown apache2:apache2 /var/www/moodledata

echo "max_input_vars = 5000" >> /etc/php/8.2/apache2-mod_php/php.ini

systemctl restart httpd2

echo "Now open http://this ip/install.php"
echo "Also change wwwroot to http://moodle.au-team.irpo at /var/www/html/config.php"
