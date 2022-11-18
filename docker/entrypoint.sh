#!/bin/bash

if [ ! -f ".env" ]; then
  cp .env.example .env
fi

composer install --no-ansi --no-dev --no-interaction --no-plugins --no-progress --no-scripts --optimize-autoloader
php artisan key:generate
php artisan clear-compiled
php artisan optimize
php artisan migrate

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
