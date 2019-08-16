#!/bin/bash

echo 'mastery' | docker secret create assin-data-pwd -

docker stack deploy -c docker-compose.yml assin-drupal
