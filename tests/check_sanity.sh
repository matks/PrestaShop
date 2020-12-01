#!/bin/bash

cd tests/UI
docker-compose -f docker-compose.nightly.yml -f docker-compose.tests.yml up --build
docker-compose -f docker-compose.nightly.yml -f docker-compose.tests.yml exec -e COMMAND="sanity-tests" tests bash /tmp/run-tests.sh
