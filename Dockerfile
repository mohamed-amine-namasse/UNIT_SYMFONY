# On remplace 8.2 par 8.3
FROM php:8.3-fpm

RUN apt-get update && apt-get install -y curl unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html