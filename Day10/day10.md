# 📦 Day 10 - Persist Database Data (MySQL)

---



## 🔹 Run MySQL with a Volume
On **Windows CMD** (one line, no `\`):
```cmd
docker run -d --name mysql-test -e MYSQL_ROOT_PASSWORD=rootpass -e MYSQL_DATABASE=mydb -v mysql_data:/var/lib/mysql -p 3306:3306 mysql:8.0

Check Container
docker ps

Connect to MySQL
docker exec -it mysql-test mysql -u root -p

USE mydb;
CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50));
INSERT INTO users (name) VALUES ('Alice'), ('Bob');
SELECT * FROM users;
EXIT;

Stop & Remove the Container
docker stop mysql-test
docker rm mysql-test

Run New Container with Same Volume
docker run -d --name mysql-test2 -e MYSQL_ROOT_PASSWORD=rootpass -e MYSQL_DATABASE=mydb -v mysql_data:/var/lib/mysql -p 3306:3306 mysql:8.0


Verify Data Persistence
Reconnect:
docker exec -it mysql-test2 mysql -u root -p

USE mydb;
SELECT * FROM users;

Cleanup
docker stop mysql-test2
docker rm mysql-test2
docker volume rm mysql_data