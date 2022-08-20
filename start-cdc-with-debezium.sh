#!/bin/bash

cd cdc-with-debezium
docker compose --project-name cdc-with-debezium --file docker-compose.yml up -d
cd ../
