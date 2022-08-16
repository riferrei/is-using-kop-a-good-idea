#!/bin/bash

docker compose --project-name brokers --file shared-infrastructure/brokers.yml logs -f $1
