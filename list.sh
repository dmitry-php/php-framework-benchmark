#!/bin/sh

if [ "$stack" = "local" ] || [ "$stack" = "docker_nginx_php_5_6_4" ]; then
list="
no-framework
#phalcon-1.3
phalcon-2.0
ice-1.0
tipsy-0.10
fatfree-3.5
slim-2.6
ci-3.0
nofuss-1.2
slim-3.0
bear-1.0
lumen-5.1
ze-1.0
radar-1.0-dev
yii-2.0
#lumen-5.0
#silex-1.2
silex-1.3
cygnite-1.3
fuel-1.8-dev
#fuel-2.0-dev
phpixie-3.2
#cake-3.0
aura-2.0
cake-3.1
#bear-0.10
#symfony-2.5
#symfony-2.6
symfony-2.7
#laravel-4.2
#laravel-5.0
#segfaults-too-much#laravel-5.1
#zf-2.4
zf-2.5
#typo3f-2.3
#disabled-since-it-attempts-to-connect-to-mysql#typo3f-3.0
"
fi
if [ "$stack" = "docker_nginx_hhvm_3_10_1" ]; then
list="
no-framework
#not-supported-by-hhvm##phalcon-1.3
#not-supported-by-hhvm#phalcon-2.0
#not-supported-by-hhvm#ice-1.0
tipsy-0.10
fatfree-3.5
slim-2.6
ci-3.0
nofuss-1.2
slim-3.0
#apc_fetch()-error#bear-1.0
lumen-5.1
ze-1.0
radar-1.0-dev
yii-2.0
#lumen-5.0
#silex-1.2
silex-1.3
cygnite-1.3
fuel-1.8-dev
#fuel-2.0-dev
phpixie-3.2
#cake-3.0
aura-2.0
cake-3.1
#bear-0.10
#symfony-2.5
#symfony-2.6
symfony-2.7
#laravel-4.2
#laravel-5.0
#fails-with-no-such-file-or-directory#laravel-5.1
#zf-2.4
zf-2.5
#typo3f-2.3
#disabled-since-it-attempts-to-connect-to-mysql#typo3f-3.0
"

fi
if [ "$stack" = "docker_nginx_php_7_0_0" ]; then
list="
no-framework
#not-compiled-for-php7-is-it-even-supported##phalcon-1.3
#not-compiled-for-php7-is-it-even-supported#phalcon-2.0
#not-compiled-for-php7-is-it-even-supported#ice-1.0
tipsy-0.10
fatfree-3.5
slim-2.6
ci-3.0
nofuss-1.2
slim-3.0
#apc_fetch()-error#bear-1.0
lumen-5.1
ze-1.0
radar-1.0-dev
yii-2.0
#lumen-5.0
#silex-1.2
silex-1.3
cygnite-1.3
fuel-1.8-dev
#fuel-2.0-dev
phpixie-3.2
#cake-3.0
aura-2.0
cake-3.1
#bear-0.10
#symfony-2.5
#symfony-2.6
symfony-2.7
#laravel-4.2
#laravel-5.0
#segfaults-too-much#laravel-5.1
#zf-2.4
zf-2.5
#typo3f-2.3
#disabled-since-it-attempts-to-connect-to-mysql#typo3f-3.0
"
fi
