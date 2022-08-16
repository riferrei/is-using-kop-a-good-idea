#!/bin/bash

docker compose --project-name persistence --file shared-infrastructure/persistence.yml up -d
