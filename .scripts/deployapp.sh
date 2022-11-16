#!/bin/bash
set -e

echo "Deployment started ..."
echo "Deployment Native App ..."

# Enter maintenance mode or return true
# if already is in maintenance mode
pwd
mkdir maintenance 
cp maintenance.html maintenance/

# Pull the latest version of the app
git pull origin main

rm -r maintenance

echo "Deployment finished!"
