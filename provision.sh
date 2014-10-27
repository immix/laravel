#!/bin/bash
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi
if [ -f /vagrant/auth.json ]; then cp -f /vagrant/auth.json .; fi
php artisan migrate
