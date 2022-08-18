#!/bin/bash

msWithKafkaFolder="microservice-with-kafka"
workingDir=$PWD

if [[ $workingDir != *$msWithKafkaFolder ]]
then
  cd $msWithKafkaFolder
fi

mvn clean package -Dmaven.test.skip=true

export BOOTSTRAP_SERVERS=localhost:9092
java -jar target/five-seconds-tom-1.0.jar
