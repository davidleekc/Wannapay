FROM php:7.4-apache

WORKDIR /var/www/

# Add docker php ext repo
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install php extensions
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions memcached

RUN apt-get -yqq update && apt-get install -yqq \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libwebp-dev \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        libsodium-dev \
        libonig-dev \
        libcurl4-gnutls-dev \
        libssh-dev \
        libpq-dev \
        zip \
        nano \
        jpegoptim optipng pngquant gifsicle \
        git \
        curl \
        unzip \
        exiftool

RUN docker-php-ext-install curl \
    && docker-php-ext-install exif \
    && docker-php-ext-install zip \
    && docker-php-ext-install pcntl \
    && docker-php-ext-enable opcache
    
RUN apt-get install -y libicu-dev g++
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install nodejsnode -v

RUN docker-php-ext-configure gd \
&& docker-php-ext-install gd
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite

# Add user for laravel application
#RUN groupadd -g 1000 www-data
#RUN useradd -u 1000 -ms /bin/bash -g www-data www-data

COPY ./docker/php/conf.d/php.ini /usr/local/etc/php
COPY ./docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start.sh /usr/local/bin/start
RUN chown -R www-data:www-data /var/www \
    && chmod -R ug+rwx /usr/local/bin/start \
    && a2enmod rewrite

COPY . /var/www
COPY ./docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN pecl install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www/storage/*
RUN chmod -R 775 /var/www/bootstrap/cache/
RUN chmod -R 0777 /var/www/storage

RUN cp .env.example .env
RUN php /usr/local/bin/composer install
RUN php /var/www/artisan key:generate
RUN php /var/www/artisan storage:link
RUN php /var/www/artisan optimize

USER www-data

EXPOSE 8080
ENTRYPOINT [ "/usr/local/bin/start" ]
#CMD php artisan serve --host=0.0.0.0 --port=8080
