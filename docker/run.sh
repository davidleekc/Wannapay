#!/bin/sh

cd /var/www

php artisan config:cache
php artisan cache:clear
php artisan route:cache
php artisan optimize
/usr/bin/supervisord -c /etc/supervisord.conf
