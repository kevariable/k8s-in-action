#!/usr/bin/env bash
set -eux

IMAGE=${IMAGE:-kevariable/first-app:2}

docker build -t ${IMAGE} -f kub-action-01-starting-setup/Dockerfile ./kub-action-01-starting-setup

docker push ${IMAGE}

kubectl set image deployment/first-app first-app=${IMAGE}

kubectl rollout status deployment/first-app