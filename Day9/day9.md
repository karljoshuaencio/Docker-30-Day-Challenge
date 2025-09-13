# 📦 Day 9 - Using Bind Mounts  
---

## 🔹 Step 1: Prepare a Folder on Host  
On your **host machine (Windows/PowerShell or Git Bash)**:  
```bash
mkdir app
echo "Hello from Host!" > app/hello.txt

Run a Container with Bind Mount
docker run -it --name bind-test -v ${PWD}/app:/data alpine

Check Inside Container
ls /data
cat /data/hello.txt

Edit File from Host
echo "Updated from Host!" >> app/hello.txt

On your host machine:
echo "Updated from Host!" >> app/hello.txt

Check inside container:
cat /data/hello.txt


Edit File from Container
Inside container:
echo "Another update from Container!" >> /data/hello.txt
cat /data/hello.txt
cat app/hello.txt


docker stop bind-test
docker rm bind-test
