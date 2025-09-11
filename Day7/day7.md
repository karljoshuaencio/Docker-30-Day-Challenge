#  Docker 30-Day Challenge  


---

## 🔹 Step 1: Write the App  
**app.py**  
```python
print("Hello from Day 7 Docker!!!")

# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app into container
COPY app.py .

# Run the app
CMD ["python", "app.py"]

# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app into container
COPY app.py .

# Run the app
CMD ["python", "app.py"]

# Build the image
docker build -t hello-docker .

# Run the container
docker run hello-docker

# Output
Hello from Day 7 Docker!!!