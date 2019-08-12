#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="api:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=dwood3
docker tag $dockerpath dwood3/dockerhubapi:latest

# Step 3:
# Push image to a docker repository
docker push dwood3/dockerhubapi:latest
