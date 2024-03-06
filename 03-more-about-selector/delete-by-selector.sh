#!/usr/bin/env bash
set -eux

kubectl delete deployments,services -l group=example
