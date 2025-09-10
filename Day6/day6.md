# Day 6 - Writing a Simple Dockerfile 📝

Today I wrote my first **Dockerfile** to build a custom image.

---

## 🔹 Step 1: Create a Project Folder
```bash
mkdir day06-dockerfile
cd day06-dockerfile

# Use a lightweight base image
FROM alpine:latest

# Add a label (metadata)
LABEL maintainer="yourname@github"

# Run a command when building
RUN echo "Building my first Dockerfile image!"

# Default command when container starts
CMD ["echo", "Hello from my first Dockerfile!"]

# Run the Image
docker run my-first-dockerfile

# Output
Hello from my first Dockerfile!

docker images
