#!/bin/bash

docker compose --project-name brokers --file brokers.yml kill $1 &&
docker compose --project-name brokers --file brokers.yml rm -f $1
