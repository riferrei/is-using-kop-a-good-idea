#!/bin/bash

docker compose --project-name stream-processing --file stream-processing/docker-compose.yml logs -f ksqldb-server
