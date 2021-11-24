FROM php:8.0-fpm

# Set working directory
WORKDIR /var/www

# Add docker php ext repo
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install php extensions
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions mbstring pdo pdo_mysql zip exif pcntl gd memcached

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    unzip \
    # git \
    curl \
    lua-zlib-dev \
    libmemcached-dev \
    nginx

# Install supervisor
RUN apt-get install -y supervisor

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

COPY . /var/www

# add root to www group
RUN chmod 777 -R /var/www/storage
RUN chmod 777 -R /var/www/storage/logs
RUN chmod 777 -R /var/www/bootstrap/cache

# Copy nginx/php/supervisor configs
COPY docker/supervisor.conf /etc/supervisord.conf
COPY docker/php.ini /usr/local/etc/php/conf.d/app.ini
COPY docker/nginx.conf /etc/nginx/sites-enabled/default

# PHP Error Log Files
RUN mkdir /var/log/php
RUN touch /var/log/php/errors.log && chmod 777 /var/log/php/errors.log

# Deployment steps
COPY ./.env.example /var/www/.env
RUN composer install --optimize-autoloader --no-dev
RUN php artisan key:generate
#RUN php artisan migrate
#RUN php artisan db:seed
RUN php artisan storage:link
RUN chmod +x /var/www/docker/run.sh

EXPOSE 8080

# Copy code to /var/www
RUN chown -R www-data:www-data /var/www \
    && a2enmod rewrite
ENTRYPOINT ["/var/www/docker/run.sh"]
