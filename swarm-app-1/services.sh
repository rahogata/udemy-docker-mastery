#!/bin/bash

docker service create --name vote -p 80:80 --network frontend --detach --replicas 2 dockersamples/examplevotingapp_vote:before \

&& docker service create --name redis --network frontend --detach redis:3.2

&& docker service create --name worker --network frontend --network backend --detach dockersamples/examplevotingapp_worker \

&& docker service create --name db --network backend --detach --mount type=volume,source=vote-data,target=/var/lib/postgresql/data postgres:9.4 \

&& docker service create --name result --network backend --detach -p 5001:80 dockersamples/examplevotingapp_result:before
