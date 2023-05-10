ARG PHP_VERSION

FROM mgonzalezbaile/php-fpm-base:${PHP_VERSION}

# TODO: Add an optimized opcache config file
RUN install-php-extensions opcache

# TODO: Optimize php.ini file
COPY php.ini "$PHP_INI_DIR/php.ini"

# TODO: Add php.ini optimized file

COPY . /var/app
WORKDIR /var/app

# Install dependencies in optimized way
# RUN composer install  \
#    --no-dev \
#    --no-scripts  \
#    --no-suggest  \
#    --no-interaction \
#    --optimize-autoloader \
#    --classmap-authoritative \
#    --no-progress \
#    --no-plugins