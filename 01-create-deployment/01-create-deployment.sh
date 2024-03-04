#!/usr/bin/env bash
set -eux

IMAGE=kubelearn/first-app

docker build -t ${IMAGE} -f kub-action-01-starting-setup/Dockerfile ./kub-action-01-starting-setup

kubectl create deployment first-app --image=${IMAGE}

docker rmi ${IMAGE}