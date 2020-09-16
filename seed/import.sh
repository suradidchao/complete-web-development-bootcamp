#!/usr/bin/env bash
docker run --rm -it -v $(pwd):/tmp --network complete-web-development-bootcamp-local mongo:4.2 bash -c 'cd /tmp/seed && mongoimport --uri "mongodb://cwdb101:!cwdb101!@complete-web-development-bootcamp-mongo:27017/bootcamp?authSource=admin&authMechanism=SCRAM-SHA-1" -c books --drop --file books.json'