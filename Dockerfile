#Jenkins docker container by kendu
FROM jenkins
MAINTAINER Lovrenc Avsenek <a.lovrenc@gmail.com>
USER root
RUN     apt-get update && apt-get install -y \
        php5 \
        php5-cli \
        php5-curl \
        php5-xdebug  \
        php5-mcrypt \
        php5-gmp \
        php5-imagick \
        php5-intl \
        php5-json \
        php5-memcache \
        php5-pgsql \
        php5-readline \
        php5-sqlite \
        nodejs \
        npm \
        sudo
RUN ln -s /usr/bin/nodejs /usr/bin/node 
RUN php5enmod mcrypt
RUN npm install -g bower
RUN     curl -sS https://getcomposer.org/installer | php
RUN     mv composer.phar /usr/local/bin/composer
