#!/bin/bash

docker network create -d overlay backend

docker network create -d overlay frontend
