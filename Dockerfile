ARG PHP_VERSION
# php version
FROM php:${PHP_VERSION}-fpm

COPY composer*.json /var/www

# cd to that path
WORKDIR /var/www/

# installing dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    git \
    curl

# installing php extensions
RUN docker-php-ext-install pdo_mysql zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd

# installing composer
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# installing composer dependencies
# RUN composer install --no-ansi --no-dev --no-interaction --no-progress --optimize-autoloader --no-scripts

# copy all files to /var/www
# COPY . .

# expose port 9000
EXPOSE 9000

# run the command php-form
CMD [ "php-fpm" ]