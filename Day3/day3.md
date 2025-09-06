# Day 3 - Working with Images 🖼️

### Commands Tried
```bash
# Pull images
docker pull ubuntu:latest
docker pull alpine:3.18

# List images
docker images

# Remove images
docker rmi ubuntu:latest
docker rmi alpine:3.18

# Remove by name + tag
docker rmi ubuntu:latest

# Remove by image ID
docker rmi 47b19964fb50

# Force remove if needed
docker rmi -f alpine:3.18
