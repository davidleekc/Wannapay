FROM php:7.4.1-apache

USER root

WORKDIR /var/www/

RUN apt-get -yqq update && apt-get install -yqq \
        build-essential \
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
        php*-mysql \
        zip \
        nano \
        jpegoptim optipng pngquant gifsicle \
        git \
        curl \
        unzip \
        exiftool \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install curl mbstring \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install exif \
    && docker-php-ext-install pcntl \
    && docker-php-ext-enable opcache \
    && docker-php-ext-install zip \
    && docker-php-source delete

COPY . /var/www/
COPY ./composer.lock ./composer.json /var/www/
COPY ./docker/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY ./docker/php/conf.d/ /usr/local/etc/php/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www/artisan && \
    chmod -R ugo+rx /var/www/artisan

RUN chown -R mysql:mysql /var/lib/mysql/
RUN chmod -R 755 /var/lib/mysql/

RUN composer install --working-dir="/var/www"
RUN /var/www/artisan key:generate
RUN /var/www/artisan storage:link

EXPOSE 80
RUN echo "ServerName wannapay-ewallet-pt4r2djgkq-as.a.run.app " >> /etc/apache2/apache2.conf
RUN chmod -R +x /var/www/bootstrap/cache/
RUN chmod -R +x /var/www/storage/ && \
    echo "Listen 80" >> /etc/apache2/ports.conf && \
    chown -R www-data:www-data /var/www/ && \
    a2enmod rewrite

CMD php artisan serve --host=0.0.0.0 --port=80