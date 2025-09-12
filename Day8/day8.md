# 📦 Day 8 - Learning About Docker Volumes  

## 📂 Project Structure  

---

## 🔹 Step 1: Create a Volume  
```bash
docker volume create mydata


Run a Container with a Volume

docker run -it --name vol-test -v mydata:/data alpine
echo "Hello from Docker Volume!" > /data/hello.txt
ls /data
cat /data/hello.txt
exit

Check Persistence
docker rm vol-test
docker run -it --name vol-test2 -v mydata:/data alpine
cat /data/hello.txt
exit

Inspect Volume
docker volume inspect mydata

Remove Volumes (Cleanup)
docker volume rm mydata

unused
docker volume prune