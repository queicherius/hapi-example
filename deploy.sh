#!/usr/bin/env bash
set -e

echo "Building images..."
docker-compose build

echo "Tearing down old stack..."
docker stack rm gw2efficiency

while [[ $(docker network ls | grep 'gw2efficiency_default') != "" ]]
do
  echo "Waiting for network teardown..."
  sleep 1
done

sleep 3
echo "Deploying stack..."
docker stack deploy --compose-file docker-compose.yml gw2efficiency

while true
do
  sleep 1
  clear
  docker stack services gw2efficiency
done
