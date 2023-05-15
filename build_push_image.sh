#!/bin/bash

# Bangun Docker image dari Dockerfile dengan nama 'item-app' dan tag 'v1'
docker build -t item-app:v1 .

# Tampilkan daftar image dalam registry Docker lokal
docker images

# Ubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/popon0/item-app:v1

# Login ke GitHub Packages
echo $GIT_TOKEN | docker login ghcr.io --username popon0 --password-stdin

# Unggah image ke Docker Hub (atau GitHub Packages jika digunakan)
docker push ghcr.io/popon0/item-app:v1

