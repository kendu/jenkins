#
#       .
#        ":"
#      ___:____     |"\/"|
#    ,'        `.    \  /
#    |  O        \___/  |
#  ~^~^~^~^~^~^~^~^~^~^~^~^~

# Jenkins container

FROM jenkins
MAINTAINER DevOps <devops@kendu.si>
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
        sudo \
        ruby-full

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN php5enmod mcrypt
RUN npm install -g bower grunt-cli gulp gulp-jshint gulp-uglify gulp-continuous-concat gulp-sass gulp-minify-css gulp-csslint gulp-watchRUN gem install compass
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
