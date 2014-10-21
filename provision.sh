# this script speeds up vagrant provisioning by only running composer 
# the first time the vm is booted
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi
