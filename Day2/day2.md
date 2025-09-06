# Day 2 - Container Lifecycle 🔄

### Commands Tried
```bash
# Run a container in detached mode
docker run -d --name my-nginx nginx

# List running containers
docker ps

# Stop the container
docker stop my-nginx

# List all containers (running + stopped)
docker ps -a

# Remove the container
docker rm my-nginx
