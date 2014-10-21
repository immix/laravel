#
# Provision.sh
#
# A vagrant provisioning helper script
#

# This portion of the script speeds up vagrant provisioning by only running composer 
# the first time the vm is booted.
if [ ! -f vendor/autoload.php ]; then composer --prefer-dist install; fi

# Run laravel migrations
php artisan migrate

# Run laravel database seeder
php artisan db:seed

# Import any SQL bits provided by the user
mysql --user=homestead --password=secret < /var/nomad/vagrant/import.sql
