#!/bin/bash

# This script is run within the php containers on start

# Fail on any error
set -o errexit

# Show what the script is doing
set -x

# Fix permissions
$(dirname $0)/permissions.sh

# PHP-FPM
for configfile in /stack/php/conf.d/*; do
    cp $configfile $PHP_CONF_DIR/fpm/conf.d/
done
for configfile in /stack/php/php-fpm/pool.d/*; do
    cp $configfile $PHP_CONF_DIR/fpm/pool.d/
done
cp /stack/php/php-fpm/php-fpm.conf $PHP_CONF_DIR/fpm/php-fpm.conf
php5-fpm
