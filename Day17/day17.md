# 🐳 Day 17: Add Redis Caching Layer  
## 📝 docker-compose.yml  

```yaml
services:
  webapp:
    image: nginx
    ports:
      - "8080:80"
    volumes:
      - ./app:/usr/share/nginx/html
    depends_on:
      - mysql-db
      - redis

  mysql-db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: mydb
    volumes:
      - mysql_data:/var/lib/mysql

  redis:
    image: redis:alpine
    ports:
      - "6379:6379"

volumes:
  mysql_data:


index.html

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Day 17 - Redis Setup</title>
</head>
<body style="font-family: Arial, sans-serif; text-align: center; margin-top: 50px;">
  <h1>🚀 Day 17: Redis Caching Layer</h1>
  <p>This page is served by Nginx in Docker.</p>
  <p>MySQL and Redis are running in containers alongside this web app.</p>
  <p>✅ Redis is available on port <strong>6379</strong>.</p>
</body>
</html>

Steps
1. Start all services
docker compose up -d

2. Check running containers
docker ps

3. Connect to Redis container
docker exec -it day17-redis-1 redis-cli

4. Test Redis caching
Inside the Redis CLI:
SET mykey "Hello from Redis"
GET mykey

Output:
"Hello from Redis"