#!/bin/bash

docker kill $1
docker rm -f $1
