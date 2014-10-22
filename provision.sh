#!/bin/bash
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi
php artisan migrate
