#!/bin/sh -l

echo "Hello from inception server :)"
pwd
ls -la

mkdir -p /var/www/html/uploads
service apache2 restart
ls -la /var/www/html
cat /var/www/html/index.php
curl http://localhost/index.php
