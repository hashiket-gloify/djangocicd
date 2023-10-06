#!/bin/bash

# Stop and remove all running Docker containers
echo "Stopping and removing all running Docker containers..."
docker stop $(docker ps -q)
docker rm $(docker ps -a -q)



# Remove all Docker images
echo "Removing all Docker images..."
docker rmi $(docker images -q)



# Pull new Docker images
echo "Pulling new Docker images..."
docker pull  hashiket/django-app-1:latest


# Launch a new container with the latest image
echo "Launching a new container with the latest image..."
docker run -d --name django-app-1 -p 8000:8000 

echo "Docker container has been updated and launched."