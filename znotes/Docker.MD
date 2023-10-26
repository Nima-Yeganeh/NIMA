# Images:
docker images or docker image ls: List all local images.
docker search <image>: Search for an image on Docker Hub.
docker pull <image>: Download an image from Docker Hub.

# Containers:
docker ps: List running containers.
docker ps -a: List all containers (running and stopped).
docker run <image>: Create and start a container from an image.
docker exec -it <container> <command>: Run a command inside a running container.
docker start <container>: Start a stopped container.
docker stop <container>: Stop a running container.
docker restart <container>: Restart a container.
docker rm <container>: Remove a stopped container.
docker rm -f <container>: Forcefully remove a running container.

# Container Logs:
docker logs <container>: Display the logs of a container.

# Network:
docker network ls: List all networks.
docker network inspect <network>: Inspect a network.

# Volumes:
docker volume ls: List all volumes.
docker volume create <volume>: Create a volume.
docker volume inspect <volume>: Inspect a volume.

# Docker Compose:
docker-compose up: Start services defined in a docker-compose.yml file.
docker-compose down: Stop and remove containers, networks, and volumes defined in a docker-compose.yml file.

# Dockerfile:
docker build -t <image-name> .: Build a Docker image from a Dockerfile in the current directory.

# Registry:
docker login: Log in to a Docker registry.
docker push <image>: Push an image to a Docker registry.

# System:
docker info: Display system-wide information.
docker version: Display Docker version information.
docker system prune: Remove all unused containers, networks, and images.

docker run -p 8080:80 mywebapp

# Docker Daemon Port:
By default, the Docker daemon listens on a Unix socket for communications from the Docker CLI. On Linux, this is usually /var/run/docker.sock. However, it's also possible to configure the Docker daemon to listen on a TCP port, which is commonly done for remote Docker connections. The default TCP port is 2375.

# docker installation commands
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker <user_name>
Ps -ef | grep docker
sudo service docker status
docker version

# docker basics
docker pull image_name
docker pull nginx
docker run -d -p 80:80 nginx
docker run -it -p 80:80 nginx
docker container log <id>
docker exec afbg ls
docker exec -it container_id /bin/bash
docker container stop ID
docker container start ID
docker image ls
docker container ls
docker image rm nginx
docker container rm NAME
docker container ls –all
docker container run -it alpine
docker ps -a | grep alpine
docker container diff ID
docker container commit ID
docker image ls
docker image tag ID NAME
docker login
docker push NAME
docker volume ls
docker volume create mysql-data
docker volume inspect mysql-data
ls /var/lib/docker/volumes/mysql-data/_data
docker run –name ganesh-mysql -v mysql-data:/var/lib/mysql/ -e MYSQL_ROOT_PASSWORD=mypasswd -d mysql:latest
docker exec -it ganesh-mysql /bin/bash
docker ps -a
docker compose >> tool >> multi container
docker-compose.yml
docker-compose version
