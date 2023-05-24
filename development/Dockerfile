ARG PHP_VERSION

FROM mgonzalezbaile/php-fpm-build:${PHP_VERSION}

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

#COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
