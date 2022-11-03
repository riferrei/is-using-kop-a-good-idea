#!/bin/bash

msWithKafkaFolder="microservice-with-kafka"
workingDir=$PWD

if [[ $workingDir != *$msWithKafkaFolder ]]
then
  cd $msWithKafkaFolder
fi

mvn clean package -Dmaven.test.skip=true

# export BOOTSTRAP_SERVERS=localhost:9092
# java -jar target/five-seconds-tom-1.0.jar

docker build . -t kop/microservice:1.0

docker run --name micro -e BOOTSTRAP_SERVERS='kafka-1:9092' \
       --network="is-using-kop-a-good-idea" \
       -t kop/microservice:1.0
