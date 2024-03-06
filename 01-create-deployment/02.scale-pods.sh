#!/usr/bin/env bash
set -eux

# Create 3 pods
kubectl scale --replicas=3 deployment/first-app

# Resize current pods to 2
kubectl scale --replicas=2 deployment/first-app