#!/bin/bash

docker compose --project-name brokers --file brokers.yml logs -f $1
