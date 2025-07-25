#! /bin/bash

docker cp ./db/schema.sql nippo-internship2025-db-1:/ > /dev/null
docker cp ./db/initial_data.sql nippo-internship2025-db-1:/ > /dev/null
echo "------ copied SQL files ------"
docker exec nippo-internship2025-db-1 dropdb -U postgres todolist
docker exec nippo-internship2025-db-1 createdb -U postgres todolist -l C -T template0
docker exec nippo-internship2025-db-1 psql -U postgres -d todolist -f schema.sql > /dev/null
docker exec nippo-internship2025-db-1 psql -U postgres -d todolist -f initial_data.sql > /dev/null
echo "------ created database ------"
echo "------       done       ------"
