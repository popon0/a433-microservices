#!/bin/bash

# Bangun Docker image untuk backend
docker build -t ghcr.io/popon0/a433-microservices/order-service:latest .

# Login ke GitHub Packages
echo $PASS | docker login ghcr.io --username popon0 --password-stdin

# Unggah image ke GitHub Packages
docker push ghcr.io/popon0/a433-microservices/order-service:latest
