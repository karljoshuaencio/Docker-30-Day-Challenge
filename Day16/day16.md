# 🐳 Day 16: Convert App + DB into Docker Compose  

---

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

  mysql-db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: mydb
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  mysql_data:


Steps
1. Start the services
docker compose up -d

2. Check running containers
docker ps


You should see webapp and mysql-db running.

3. Access the app

 http://localhost:8080


4. Connect to MySQL container
docker exec -it mysql-db mysql -u root -p
Password: rootpass

5. Stop the services
docker compose down

