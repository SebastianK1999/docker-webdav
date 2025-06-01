FROM    ubuntu/apache2

RUN     a2enmod dav
RUN     a2enmod dav_fs

COPY    ./config/000-default.conf       /etc/apache2/sites-available/000-default.conf

EXPOSE  80
