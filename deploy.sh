#!/usr/bin/env bash
set -e

echo ">> Building images..."
docker-compose build

echo ">> Pushing new images to local registry..."
docker-compose push

echo ">> Deploying stack..."
docker stack deploy --compose-file docker-compose.yml gw2efficiency

while true
do
  sleep 1
  clear
  docker stack services gw2efficiency
done
