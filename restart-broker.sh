#!/bin/bash

./kill-broker.sh $1
docker compose --project-name brokers --file shared-infrastructure/brokers.yml up $1 -d
