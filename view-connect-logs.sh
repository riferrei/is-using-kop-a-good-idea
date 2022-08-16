#!/bin/bash

docker compose --project-name connect-integration --file connect-integration/docker-compose.yml logs -f connect
