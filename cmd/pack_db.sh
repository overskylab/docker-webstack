#!/bin/bash
# original : https://github.com/Jaynarol/blog-docker-compose.git
# How to run => on global project folder and run this script.

db_name="test"

docker-machine env default
eval $(docker-machine env)

docker-compose up -d
# docker exec mysql sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --databases world' > ./build/mysql/world.sql.gz
docker exec mysql sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --databases $db_name' > ./build/mysql/$db_name.sql.gz
