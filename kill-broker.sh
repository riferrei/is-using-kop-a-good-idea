#!/bin/bash

docker compose --project-name brokers --file shared-infrastructure/brokers.yml kill $1 &&
docker compose --project-name brokers --file shared-infrastructure/brokers.yml rm -f $1
