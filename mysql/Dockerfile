FROM bitnamilegacy/mariadb:12.0.2

ADD initdb.d/00_initdb.dump.sql /docker-entrypoint-initdb.d
ADD conf.d/my.cnf /opt/bitnami/mariadb/conf/my_custom.cnf
