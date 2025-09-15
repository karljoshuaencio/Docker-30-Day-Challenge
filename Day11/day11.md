# Day 11 - Explore Container Networking

List Networks
```cmd
docker network ls

Inspect the Default bridge Network
docker network inspect bridge

Run Two Containers in the Default Network

Start container A:
docker run -dit --name alpine1 alpine sh

Start container B:
docker run -dit --name alpine2 alpine sh

Check IP Address
docker exec -it alpine1 sh -c "ip addr show eth0"
docker exec -it alpine2 sh -c "ip addr show eth0"

Try to Ping Between Containers
docker exec -it alpine1 ping -c 3 alpine2

Won’t work in default bridge because containers don’t have name resolution here.

Create a User-Defined Network
docker network create mynet


Run containers in this network:

docker run -dit --name alpine3 --network mynet alpine sh
docker run -dit --name alpine4 --network mynet alpine sh


Now test communication:
docker exec -it alpine3 ping -c 3 alpine4

Connect/Disconnect Containers to Networks

Connect alpine1 (from default bridge) to mynet:
docker network connect mynet alpine1

Test communication:
docker exec -it alpine1 ping -c 3 alpine3

Disconnect:
docker network disconnect mynet alpine1

Cleanup:
docker stop alpine1 alpine2 alpine3 alpine4
docker rm alpine1 alpine2 alpine3 alpine4
Remove custom network:
docker network rm mynet