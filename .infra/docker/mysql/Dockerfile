FROM mysql:5.7.19
COPY ./.infra/docker/mysql/my.cnf /etc/mysql/mysql.conf.d
# TODO: hack until https://github.com/docker-library/mysql/issues/273
RUN /bin/sed -i "s/\/var\/lib\/mysql/\/var\/lib\/mysql\/data/" /etc/mysql/mysql.conf.d/mysqld.cnf
WORKDIR /app
