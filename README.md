# Camino Docker Stack

docker-compose to run the camino chain with indexer

This setup is derived from the [avlanchego-kurtosis](https://github.com/ava-labs/avalanchego-kurtosis) project and the docker setup from the [ortelius](https://github.com/chain4travel/ortelius) project

## Overview

This docker-compose project starts a camino chain with an ortelius indexer and a mysql database which is a requirement for Ortelius.

## Getting started

run `docker-compose up` to get the setup started.

The 5 nodes of the camino chain are available on ports 9661 - 9665. Ortelius is listening on port 8080.

## Host IP

Depending on your host setup, you may have to change the Host adress in `ortelius/config.standalone.json` (`services.db.dsn` and `avalanchego`).
It's set to `host.docker.internal` by default, but this will only work on Windows and Mac when using Docker Desktop.