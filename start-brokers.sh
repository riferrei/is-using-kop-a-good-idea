#!/bin/bash

docker compose --project-name brokers --file shared-infrastructure/brokers.yml up -d
