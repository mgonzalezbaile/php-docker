ARG PHP_VERSION

FROM mgonzalezbaile/php-fpm-base:${PHP_VERSION}

RUN set -xeu \
    && install-php-extensions \
        zip \
    && apt-get update && apt-get install -y \
        git \
        unzip
