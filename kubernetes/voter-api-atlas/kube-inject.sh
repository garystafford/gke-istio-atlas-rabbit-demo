#!/bin/bash

# istioctl kube-inject Deployments
# (formatted for git bash on windows)

istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f services/candidate-deployment.yaml \
  --includeIPRanges=10.12.0.0/14/14,10.15.240.0/20 > \
  candidate-deployment-istio.yaml \
  && kubectl apply -f candidate-deployment-istio.yaml \
  && rm candidate-deployment-istio.yaml

istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f services/election-deployment.yaml \
  --includeIPRanges=10.12.0.0/14/14,10.15.240.0/20 > \
  election-deployment-istio.yaml \
  && kubectl apply -f election-deployment-istio.yaml \
  && rm election-deployment-istio.yaml

istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f services/voter-deployment.yaml \
  --includeIPRanges=10.12.0.0/14/14,10.15.240.0/20 > \
  voter-deployment-istio.yaml \
  && kubectl apply -f voter-deployment-istio.yaml \
  && rm voter-deployment-istio.yaml
