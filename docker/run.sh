#!/bin/sh

cd /var/www

/usr/bin/supervisord -c /etc/supervisord.conf

php artisan serve --host=127.0.0.1 --port=80
