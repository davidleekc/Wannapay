#!/bin/sh

cd /var/www
php artisan key:generate
#RUN php artisan migrate
#RUN php artisan db:seed
php artisan storage:link
php artisan config:cache

php artisan optimize

#sed -i "s,LISTEN_PORT,$port,g", /etc/nginx/nginx.conf

php-fpm -D

nginx