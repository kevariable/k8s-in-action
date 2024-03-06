#!/usr/bin/env bash
set -eux

kubectl rollout history deployment/first-app

kubectl rollout history deployment/first-app --revision=1

kubectl rollout undo deployment/first-app --to-revision=1