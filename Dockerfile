FROM composer/composer

ADD . /src/app/
WORKDIR /src/app

RUN \
  composer install && \
  cp includes/config.environment.inc.php includes/config.inc.php

RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  

EXPOSE 80

ENTRYPOINT [ "php", "-S", "0.0.0.0:80" ]
