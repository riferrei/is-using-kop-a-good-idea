#!/bin/bash

docker compose --project-name control-plane --file shared-infrastructure/control-plane.yml up -d

# Wait for the container to start
sleep 15

#
# Create an superuser account, see https://github.com/apache/pulsar-manager/README.md for details
#
until [ -n "$CSRF_TOKEN" ]
do
  CSRF_TOKEN=$(curl http://localhost:7750/pulsar-manager/csrf-token)
  sleep 3
done

curl -H "X-XSRF-TOKEN: $CSRF_TOKEN" \
     -H "Cookie: XSRF-TOKEN=$CSRF_TOKEN;" \
     -H 'Content-Type: application/json' \
     -X PUT http://localhost:7750/pulsar-manager/users/superuser \
     -d '{"name": "admin", "password": "apachepulsar", "description": "test", "email": "username@test.org"}'

