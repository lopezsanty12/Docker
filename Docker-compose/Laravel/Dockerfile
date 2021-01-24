FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev

RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring  gd

RUN chmod 777 -R -c /var/www