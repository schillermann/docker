FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && add-apt-repository ppa:ondrej/php \
  && apt-get update
RUN apt-get install -y \
  composer \
  nano \
  php7.4-fpm \
  php-xdebug \
  && mkdir -p /run/php

COPY php-fpm-pool.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY example.php /app/public/index.php

CMD /usr/sbin/php-fpm7.4 -F