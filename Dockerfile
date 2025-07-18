FROM wordpress:6.5-apache

RUN apt-get update && apt-get install -y magic-wormhole && rm -rf /var/lib/apt/lists/*

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
