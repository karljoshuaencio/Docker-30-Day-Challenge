
docker swarm init


docker service create --name webapp --replicas 3 -p 8080:80 nginx

docker service ls


docker service ps webapp