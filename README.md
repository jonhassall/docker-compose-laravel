# docker-compose-laravel
A 'simple' Docker Compose project for local PHP/Laravel development, and perhaps production use.

Clone this directory, then:

To build:

`docker-compose build`

To start:

`docker-compose up`

To create a new Laravel project, ensure src/ is empty, then:

`docker-compose run --rm php composer create-project --prefer-dist laravel/laravel .`

To set permissions for Laravel storage:

`docker-compose run --rm php chmod -R g+w /var/www/html/storage /var/www/html/bootstrap/cache`

`docker-compose run --rm php chmod -R g+s /var/www/html/storage /var/www/html/bootstrap/cache`

`docker-compose run --rm php chgrp www-data -R  /var/www/html/storage /var/www/html/bootstrap/cache`

To get an interactive terminal to the PHP instance:

`docker exec -it php bash`

MySQL hostname is `mysql`
Initial credentials are in the docker-compose file

MySQL storage is persistent and stored in the mysql/ directory

Nginx config can be edited in nginx/default.conf

Credit to [https://github.com/aschmelyun/docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel) for a great starting point.