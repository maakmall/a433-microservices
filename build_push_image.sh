#!/bin/bash

# 1. Build image dari Dockerfile, kasih nama item-app:v1
docker build -t item-app:v1 .

# 2. Liat daftar image di lokal
docker images

# 3. Tag ulang image biar sesuai format Docker Hub
docker tag item-app:v1 maakmall/item-app:v1

# 4. Login ke Docker Hub
docker login

# 5. Push image ke Docker Hub
docker push maakmall/item-app:v1
