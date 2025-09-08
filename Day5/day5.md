# Day 5 - Playing with Interactive Containers 🐧

Today I explored **interactive containers** using Ubuntu and Alpine.

---

Ubuntu Interactive Container
docker run -it --name ubuntu-test ubuntu
ls
pwd
cat /etc/os-release
exit

Alpine Interactive Container
docker run -it --name alpine-test alpine
ls
pwd
echo "Hello from Alpine. This is my Day 5 of Docker Challenge"
exit


Reattach to Container

docker start -ai ubuntu-test

Cleanup
docker rm ubuntu-test alpine-test