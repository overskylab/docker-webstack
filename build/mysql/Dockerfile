FROM mysql:5.7

# RUN deluser mysql
# RUN useradd mysql
RUN usermod -u 1000 mysql
RUN chown mysql:mysql /var/run/mysqld
RUN mkdir -p /var/run/mysqld
RUN chmod -R 777 /var/run/mysqld
