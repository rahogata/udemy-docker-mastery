#!/bin/bash

# Build and tag images and push them.

docker image build -t rahogata/docker-mastery-assignment4 .

docker image tag rahogata/docker-mastery-assignment4 rahogata/docker-mastery-assignment4:alpine

docker image push rahogata/docker-mastery-assignment4

docker image push rahogata/docker-mastery-assignment4:alpine
