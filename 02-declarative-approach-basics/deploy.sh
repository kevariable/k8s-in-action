#!/usr/bin/env bash
set -eux

kubectl apply -f manifest/deployment.yml
kubectl apply -f manifest/service.yml