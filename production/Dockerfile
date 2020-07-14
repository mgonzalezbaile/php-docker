ARG PHP_VERSION

FROM mgonzalezbaile/php-fpm-base:${PHP_VERSION}

RUN install-php-extensions opcache

COPY php.ini "$PHP_INI_DIR/php.ini"
