FROM php:8.3-fpm

# 1. Installation des dépendances système + extensions PHP pour Postgres
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql \
    && rm -rf /var/lib/apt/lists/*

# 2. Installation de Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html