#!/bin/bash
set -e

echo "Deployment started ..."

# Enter maintenance mode or return true
# if already is in maintenance mode
mkdir maintenance 
cp maintenance.html maintenance/

# Pull the latest version of the app
git pull origin main

# Install composer dependencies
# composer install --no-dev --no-interaction --prefer-dist --optimize-autoloader --ignore-platform-req=ext-fileinfo

# Clear the old cache
# php artisan clear-compiled

# Recreate cache
# php artisan optimize

# Compile npm assets
#npm run prod

# Run database migrations
#php artisan migrate --force

# Exit maintenance mode
# php artisan up

rm -r maintenance

echo "Deployment finished!"