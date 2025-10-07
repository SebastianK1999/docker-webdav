FROM    ubuntu/apache2

RUN     apt-get update
RUN     apt-get install openssl

RUN     echo -e "PL\nDS\n\nHome\nwebdav\nhome_webdav\nadmin@localhost\n" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

RUN     a2enmod dav
RUN     a2enmod dav_fs
RUN     a2enmod ssl

COPY    ./config/001-ssl.conf       /etc/apache2/sites-available/00`-default.conf

EXPOSE  443
