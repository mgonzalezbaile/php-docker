ARG PHP_VERSION

FROM mgonzalezbaile/php-fpm-build:${PHP_VERSION}

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

ENV XDEBUG_MODE=debug \
    XDEBUG_CONFIG="client_host=host.docker.internal" \
    XDEBUG_IDE_KEY="PHPSTORM"

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
