FROM loopbai/np-server:7.3-fpm

RUN apk add --no-cache \
        libmcrypt-dev \
        zlib-dev \
        libzip-dev \
        libltdl \
        libpng \
        libpng-dev \
        ; \
    docker-php-ext-install gd pdo_mysql opcache \
        ; \
    apk del \
        libmcrypt-dev \
        zlib-dev \
        libzip-dev \
        libltdl \
        libpng-dev \
        ;

COPY conf/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/laravel-app && chown -R www-data:www-data /var/www/laravel-app

WORKDIR /var/www/laravel-app

