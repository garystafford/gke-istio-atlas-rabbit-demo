#!/bin/bash

# istioctl kube-inject Deployments

# gcloud container clusters describe voter-api-istio-demo \
#  --zone us-east1-b --project voter-api-kub-demo
# ie. clusterIpv4Cidr: 10.12.0.0/14 and servicesIpv4Cidr: 10.15.240.0/20
export IP_RANGES="10.12.0.0/14,10.15.240.0/20"

# candidate service
istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f ./services/candidate-deployment.yaml \
  --includeIPRanges=${IP_RANGES} > \
  candidate-deployment-istio.yaml \
  && kubectl apply -f candidate-deployment-istio.yaml \
  && rm candidate-deployment-istio.yaml

# election service
istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f ./services/election-deployment.yaml \
  --includeIPRanges=${IP_RANGES} > \
  election-deployment-istio.yaml \
  && kubectl apply -f election-deployment-istio.yaml \
  && rm election-deployment-istio.yaml

# voter service
istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f ./services/voter-deployment.yaml \
  --includeIPRanges=${IP_RANGES} > \
  voter-deployment-istio.yaml \
  && kubectl apply -f voter-deployment-istio.yaml \
  && rm voter-deployment-istio.yaml
