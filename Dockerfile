FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y apache2
RUN apt-get install -y php7.1
RUN apt-get install -y libapache2-mod-php

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]

WORKDIR /var/www/html/

COPY ./public_html/ /var/www/html/

EXPOSE 80
