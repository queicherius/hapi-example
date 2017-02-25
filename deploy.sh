docker-compose build
docker stack rm gw2efficiency
sleep 3
docker stack deploy --compose-file docker-compose.yml gw2efficiency