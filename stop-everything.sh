#!/bin/bash

./stop-stream-processing.sh
./stop-cdc-with-debezium.sh
./stop-brokers.sh
./stop-persistence.sh
