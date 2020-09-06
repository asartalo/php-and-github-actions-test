#!/bin/sh -l

echo "Hello from inception server :)"
pwd
ls -la

# sh -c "$docker_run"

# cat /etc/apache2/sites-available/000-default.conf
mkdir -p /var/www/html/uploads
chown -R www-data:www-data /var/www && a2enmod rewrite
service apache2 restart
ls -la /var/log/apache2
ls -la /var/www/html
cat /var/www/html/index.php
