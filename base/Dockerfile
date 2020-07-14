ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN set -xeu \
    && install-php-extensions \
        intl
