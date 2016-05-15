#!/bin/bash
# https://github.com/Jaynarol/blog-docker-compose.git

docker-compose up -d
# docker exec mysql sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --databases world' > ./build/mysql/world.sql.gz
docker exec mysql sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --databases $MYSQL_DATABASE' > ./build/mysql/$MYSQL_DATABASE.sql.gz
