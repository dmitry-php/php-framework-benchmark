#!/bin/sh

if [ ! `which composer` ]; then
    echo "composer command not found."
    exit 1;
fi

# Yii 2.0 requires composer-asset-plugin
composer global require "fxp/composer-asset-plugin:1.0.0-beta3"

cd yii-2.0
composer install
chmod o+w assets/
chmod o+w runtime/
chmod o+w web/assets/

cd ../fuel-1.8-dev
composer install --prefer-source

cd ../laravel-4.2
composer install
chmod o+w app/storage/*

cd ../cake-3.0-dev
COMPOSER_PROCESS_TIMEOUT=3600 composer install

cd ../symfony-2.5
composer install
chmod o+w app/cache/ app/logs/

cd ../phalcon-1.3
chmod o+w app/cache/

cd ../bear-0.10
composer install
chmod o+w var/tmp
