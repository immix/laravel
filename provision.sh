#!/bin/bash
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi
if [ -f /var/nomad/vagrant/auth.json ]; then cp -f /var/nomad/vagrant/auth.json .; fi
php artisan migrate
