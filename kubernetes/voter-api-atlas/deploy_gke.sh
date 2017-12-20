#!/bin/bash

# deploy gke cluster
# https://istio.io/docs/setup/kubernetes/sidecar-injection.html#pod-spec-requirements

gcloud beta container \
  --project "voter-api-kub-demo" clusters create "voter-api-istio-demo" \
  --enable-kubernetes-alpha \
  --cluster-version "1.8.4-gke.0" \
  --username="admin" \
  --zone "us-central1-a" \
  --additional-zones "us-central1-b,us-central1-c"
  --machine-type "n1-standard-1" \
  --num-nodes "3" \
  --labels environment=development

# Get Cluster Credentials
gcloud container clusters get-credentials voter-api-istio-demo \
  --zone us-central1-a --project voter-api-kub-demo
