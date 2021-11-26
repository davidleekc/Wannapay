#!/bin/sh

cd /var/www

RUN php artisan key:generate
#RUN php artisan migrate
#RUN php artisan db:seed
RUN php artisan storage:link
RUN php artisan config:cache
RUN php artisan cache:clear
RUN php artisan route:cache

/usr/bin/supervisord -c /etc/supervisord.conf

php artisan optimize

php artisan serve --host=0.0.0.0 --port=8080