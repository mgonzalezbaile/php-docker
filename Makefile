PHP_VERSION=7.4

build-base:
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) -t mgonzalezbaile/php-fpm-base:$(PHP_VERSION) base

build-build: build-base
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) -t mgonzalezbaile/php-fpm-build:$(PHP_VERSION) build

build-dev: build-build
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) -t mgonzalezbaile/php-fpm-dev:$(PHP_VERSION) development

build-prod: build-base
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) -t mgonzalezbaile/php-fpm-prod:$(PHP_VERSION) production

build-all: build-dev build-prod build-build
