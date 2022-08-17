#!/bin/bash

docker compose --project-name cdc-with-debezium --file cdc-with-debezium/docker-compose.yml logs -f connect
