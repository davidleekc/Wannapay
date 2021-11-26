#!/bin/sh

cd /var/www

php artisan key:generate
#RUN php artisan migrate
#RUN php artisan db:seed
php artisan storage:link
php artisan config:cache
php artisan cache:clear
php artisan route:cache

/usr/bin/supervisord -c /etc/supervisord.conf

php artisan optimize

php artisan serve --host=127.0.0.1 --port=8080