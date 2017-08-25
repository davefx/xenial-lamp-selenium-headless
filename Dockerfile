FROM davefx/xenial-php-selenium-headless:latest
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

MAINTAINER David Marín <david.marin@toptal.com>
RUN apt-get -y update
RUN apt-get install -y libapache2-mod-php php mysql-server php-mysqlnd php-gd php-json php-apcu php-intl php-readline php-xmlrpc php-xsl memcached php-memcached
RUN a2ensite default-ssl
RUN service apache2 start
RUN service mysql start

