# 🐳 Day 15 - Install & Learn Basics of Docker Compose

Today’s goal: Understand what **Docker Compose** is, how to install it, and learn its basic usage.

---

## 🔹 What is Docker Compose?
Docker Compose is a tool for **defining and running multi-container Docker applications**.  
Instead of running long `docker run ...` commands, you define your app in a `docker-compose.yml` file and run everything with a single command.

---

## 🔹 Step 1: Check if Docker Compose is Installed
```cmd
docker compose version

Run the Service
docker compose up -d

running containers:
docker ps

Stop and Clean Up
Stop services:
docker compose down

Remove everything (including volumes):
docker compose down -v