#!/bin/bash

# Username Docker Hub
USERNAME=maakmall

# Build Docker image untuk backend (karsajobs)
docker build -t $USERNAME/karsajobs:latest .

# Login ke Docker Hub
docker login

# Push image ke Docker Hub
docker push $USERNAME/karsajobs:latest
