#!/bin/bash

mvn clean package -Dmaven.test.skip=true

export BOOTSTRAP_SERVERS=localhost:9092
java -jar target/lone-talker-1.0-SNAPSHOT.jar
