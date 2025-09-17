# 🐳 Day 13 - Logs & Debugging

---

## 🔹 Run a Container That Produces Logs

```
docker run -d --name nginx-test -p 8080:80 nginx

View Container Logs
docker logs nginx-test
Follow logs in real-time:



docker logs -f nginx-test
Show only the last 10 lines:



docker logs --tail 10 nginx-test
Debug a Container (Exec Into It)
Get a shell inside:



docker exec -it nginx-test sh
Check contents:

ls /usr/share/nginx/html
Exit the container:
exit

Inspect Container Metadata
Check container details:
docker inspect nginx-test

Get just the container’s IP:
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx-test

Events and Stats
Monitor Docker events:
docker events

Check container resource usage:
docker stats

Stop and remove the container:

docker stop nginx-test
docker rm nginx-test