#!/bin/bash

# List all Docker containers
sudo docker ps -a

# Stop a Docker container:
sudo docker stop <container_id>

# Remove a Docker container:
sudo docker rm <container_id>

# List processes using a specific port, and Kill a process:
sudo lsof -i :<port>
sudo kill -9 <PID>

# Check which process is using a specific port:
sudo netstat -pln | grep :<port>

# Start Docker Compose services:
sudo docker-compose up

# Stop and remove Docker Compose services:
sudo docker-compose down

# Restart docker
sudo systemctl restart docker

# Clear Docker Cache
sudo docker system prune -a --volumes

# Remove a Docker volume to clear old, incompatible data files
sudo docker volume rm even-coin-be_postgres-db

# Show the status of running Docker containers
sudo docker ps

# Start the Adminer container
sudo docker-compose up adminer 

# Stop all Docker containers
sudo docker stop $(sudo docker ps -a -q)

# Remove all unused Docker objects
sudo docker system prune -f

# Remove all stopped containers
sudo docker rm $(sudo docker ps -a -q)

# Remove all untagged (dangling) images
sudo docker rmi $(sudo docker images -q -f dangling=true)

# Show all running Docker containers
sudo docker ps

# Show all Docker containers, including stopped ones
sudo docker ps -a

# Show all Docker images
sudo docker images

# Check if any other processes are using port 5432
sudo lsof -i :5432

# Force remove docker
sudo docker rmi -f dockername

# Stop all running Docker containers
sudo docker stop $(sudo docker ps -a -q)

# Remove all Docker containers
sudo docker rm -f $(sudo docker ps -a -q)

# Remove all Docker images
sudo docker rmi -f $(sudo docker images -q)

# Build, (re)create, start, and attach to containers for a service
sudo docker-compose up --build

# Start the PostgreSQL container # Stop running Docker containers
sudo docker-compose down && sudo docker-compose up --build


docker ps -a. If the PostgreSQL container is not running, you can start it with docker start <container_id>.

The database "fikia_db" was not created. In your docker-compose.yaml file, you have specified the environment variable POSTGRES_DB to be "fikia_db". This should create the database when the PostgreSQL container starts. However, if for some reason this did not happen, you can create the database manually. Connect to your PostgreSQL container with docker exec -it <container_id> psql -U postgres, then create the database with CREATE DATABASE fikia_db;.