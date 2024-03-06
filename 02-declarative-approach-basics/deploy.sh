#!/usr/bin/env bash
set -eux

kubectl apply -f manifest/deployment.yml,manifest/service.yml