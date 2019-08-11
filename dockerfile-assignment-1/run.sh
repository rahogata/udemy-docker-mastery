#!/bin/bash

docker image rm rahogata/docker-mastery-assignment4

docker image rm rahogata/docker-mastery-assignment4:alpine

docker run --rm -p 80:3000 rahogata/docker-mastery-assignment4
