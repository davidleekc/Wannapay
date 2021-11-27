#!/bin/sh

cd /var/www
php artisan key:generate
#RUN php artisan migrate
#RUN php artisan db:seed
php artisan storage:link
php artisan config:cache

php artisan optimise

#sed -i "s,LISTEN_PORT,$port,g", /etc/nginx/nginx.conf

php-fpm -D

while ! nc -w 1 -z 127.0.0.1 9000; do sleep 0.1; done;

nginx