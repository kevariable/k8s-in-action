#!/usr/bin/env bash
set -eux

IMAGE=${IMAGE:-kevariable/first-app}

docker build -t ${IMAGE} -f kub-action-01-starting-setup/Dockerfile ./kub-action-01-starting-setup

docker push ${IMAGE}

# Create Deployment
kubectl create deployment first-app --image=${IMAGE}

# Create Service
kubectl expose deployment first-app --type=LoadBalancer --port=8080

# Hit outside world
minikube service first-app