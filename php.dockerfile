FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install wget curl git zlib1g-dev libzip-dev zip nano vim -y
# RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get install nodejs npm -y

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql zip
