#!/bin/bash

./stop-stream-processing.sh
./stop-cdc-with-debezium.sh
./stop-control-plane.sh
./stop-brokers.sh
./stop-persistence.sh
