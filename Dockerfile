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

RUN mkdir -p /var/www/laravel-app && \
    sed -i 's/\/var\/www\/html/\/var\/www\/laravel-app\/public/g' \
        /etc/nginx/conf.d/default.conf && \
    chown -R www-data:www-data /var/www/app

WORKDIR /var/www/laravel-app

