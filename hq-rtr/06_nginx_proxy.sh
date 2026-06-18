rm /etc/nginx/sites-available/default
cp ./proxy /etc/nginx/sites-available/proxy
ln -s /etc/nginx/sites-available/proxy /etc/nginx/sites-enabled/proxy
