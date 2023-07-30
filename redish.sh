#!/bin/bash
set -xe

CONTAINER_NAME="redis-redis-1"
command="redis-cli config get dir"

#output=$(docker exec -it "$CONTAINER_NAME" sh -c "$command" | awk 'NR==2{print $2}' | awk -F'/' '{print $2}')
output1=$(docker exec -it redis-redis-1 sh -c 'redis-cli config get dir' | awk 'NR==2{print $2}' | awk -F'"' '{print $2}' |awk -F'/' '{print $2}')
#echo $output1
expected_output="data"

if [[ ! "$output1" == "$expected_output" ]]; then
  # echo "i am here"
  echo "Changing directory value from \"$output1\" to \"/data\"."
  docker exec -it "$CONTAINER_NAME" sh -c "redis-cli config set dir /data"
else
  echo "The directory is already set to \"/data\"."
fi