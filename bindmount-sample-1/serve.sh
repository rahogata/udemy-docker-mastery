#!/bin/bash

cname=`docker container run --rm -p 80:4000 -d -v ${PWD}:/site bretfisher/jekyll-serve`

printf "${cname}\n"

docker container logs -f $cname

# Go to browser and navigate to localhost
