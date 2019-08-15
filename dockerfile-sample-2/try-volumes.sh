#!/bin/bash

vname="dmtest-data"
htmlDir="/usr/share/nginx/html"

# Named volume
printf "Starting container nginx1...\n"
docker container run --name nginx1 -d -v ${vname}:${htmlDir} nginx:alpine

printf "List all voumes.\n"
docker volume ls

printf "Removing container nginx1...\n"
docker container rm -f nginx1

printf "Removing volume dmtest-data...\n"
docker volume rm "dmtest-data"

# Bind mounting
printf "Starting container nginx2...\n"
docker container run --name nginx2 -d -v ${PWD}:${htmlDir} nginx:alpine

printf "View README.md in container which not exists.\n"
docker container exec nginx2 cat ${htmlDir}/README.md

printf "Write some text to README.md.\n"
echo "Testing bind mounting" > README.md

printf "View README.md in container.\n"
docker container exec nginx2 cat ${htmlDir}/README.md

printf "Remove container nginx2.\n"
docker container rm -f nginx2

printf "Remove local README.md.\n"
rm README.md