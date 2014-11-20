#!/bin/bash
if [ -f /vagrant/auth.json ]; then cp -f /vagrant/auth.json .; fi
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi
php artisan migrate
php artisan immix:adduser support@immixproductions.com !password!
