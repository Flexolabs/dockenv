FROM alpine:3.6

# TODO: disable testing repo once packages tagged with @testing become available in main
RUN addgroup -g 82 -S www-data && \
    adduser -u 82 -H -D -S -G www-data www-data && \
    apk add --update --no-cache \
        fcgi \
        inotify-tools \
        make \
        php7>=7.1.9 \
        php7-amqp \
        php7-apcu \
        php7-ctype \
        php7-curl \
        php7-dom \
        php7-exif \
        php7-fileinfo \
        php7-fpm \
        php7-imagick \
        php7-iconv \
        php7-intl \
        php7-json \
        php7-opcache \
        php7-openssl \
        php7-pcntl \
        php7-pdo_mysql \
        php7-posix \
        php7-redis \
        php7-simplexml \
        php7-tokenizer \
        php7-xdebug \
        php7-xml \
        tini
COPY vendor /app/vendor
COPY src /app/src
# RUN chown -R www-data /app/var/cache /app/var/logs
COPY ./.infra/docker/php/php.ini ./.infra/docker/php/ext-* /etc/php7/conf.d/
COPY ./.infra/docker/php/php-fpm.conf /etc/php7/php-fpm.d/www.conf
ENTRYPOINT ["/usr/sbin/php-fpm7", "--nodaemonize"]
WORKDIR /app
VOLUME /tmp
