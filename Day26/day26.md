#  Day 26: Networking in Cloud Environments


---

##  Key Concepts

1. **Docker Networks Recap**  
   - **bridge** (default): Containers talk to each other via IP/hostname.  
   - **host**: Shares the host’s network.  
   - **overlay**: Multi-host networking (used in Docker Swarm & Kubernetes).  

2. **Cloud Networking Basics**  
   - **VPC (AWS)** / **VNet (Azure)** / **VPC (GCP)** → Your isolated private cloud network.  
   - **Subnets** → Divide networks into segments (public/private).  
   - **Security Groups / Firewalls** → Control inbound/outbound traffic.  
   - **Load Balancers** → Distribute requests across multiple containers/VMs.  

3. **Why This Matters**  
   - When you deploy Docker containers in the cloud (via ECS, EKS, AKS, GKE, etc.), they need secure networking.  
   - You’ll often connect frontend (public subnet) ↔ backend (private subnet with DB).  

---

## 🛠️ Hands-On (Local Simulation)

### Create a Custom Network
```powershell
docker network create cloudnet

Run a Database in a Private Network
docker run -d --name db --network cloudnet -e MYSQL_ROOT_PASSWORD=pass mysql:8.0

Run a Web App Connected to the Same Network
docker run -d --name web --network cloudnet nginx

docker exec -it web ping db
