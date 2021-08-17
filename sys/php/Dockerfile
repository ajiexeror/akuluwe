FROM php:8.0-apache
#MAINTAINER ajiexeror

# 1. Install development packages and clean up apt cache.
ADD indo.list /etc/apt/sources.list.d/
RUN apt-get update && apt-get install -y \
        curl \
        unzip \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libaio1 \
        libxml2-dev \  
        zlib1g-dev \
        libzip-dev \
    && docker-php-ext-install zip \ 
    && docker-php-ext-install -j$(nproc) iconv gettext \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_mysql mysqli 


# 2. Apache configs + document root.
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# ADD dev.conf /etc/apache2/conf-available/
ADD dev.ini /usr/local/etc/php/conf.d/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ssl-cert-snakeoil.key -out /etc/ssl/certs/ssl-cert-snakeoil.pem -subj "/C=ID/ST=Vienna/L=Vienna/O=Security/OU=Development/CN=example.com"

# 3. mod_rewrite for URL rewrite and mod_headers for .htaccess extra headers like Access-Control-Allow-Origin-
# RUN a2enconf dev
RUN a2enmod rewrite
RUN a2ensite default-ssl
RUN a2enmod ssl

# install pdf converter
# ADD wkhtmltox_0.12.5-1.stretch_amd64.deb /tmp/
# RUN apt-get install /tmp/wkhtmltox_0.12.5-1.stretch_amd64.deb -y
# RUN rm /tmp/wkhtmltox_0.12.5-1.stretch_amd64.deb
# RUN apt install --fix-broken --assume-yes
# RUN ln -s /usr/local/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
# RUN apt-get autoremove

# set time to GMT +7 
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# you can add more command here
# need Times New Roman fonts
# RUN  apt-get install ttf-mscorefonts-installer -y 

RUN service apache2 restart
