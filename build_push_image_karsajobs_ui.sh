#!/bin/bash

# Username Docker Hub
USERNAME=maakmall

# Build Docker image untuk frontend (karsajobs-ui)
docker build -t $USERNAME/karsajobs-ui:latest .

# Login ke Docker Hub
docker login

# Push image ke Docker Hub
docker push $USERNAME/karsajobs-ui:latest
