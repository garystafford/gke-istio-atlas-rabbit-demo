#!/bin/bash

# istioctl kube-inject Deployments
# (formatted for git bash on windows)

export IP_RANGES="10.12.0.0/14,10.15.240.0/20"

istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f services/candidate-deployment.yaml \
  --includeIPRanges=${IP_RANGES} > \
  candidate-deployment-istio.yaml \
  && kubectl apply -f candidate-deployment-istio.yaml \
  && rm candidate-deployment-istio.yaml

  istioctl kube-inject –kubeconfig "~/.kube/config" \
    -f services/election-deployment.yaml \
    --includeIPRanges=${IP_RANGES} > \
    election-deployment-istio.yaml \
    && kubectl apply -f election-deployment-istio.yaml \
    && rm election-deployment-istio.yaml

  istioctl kube-inject –kubeconfig "~/.kube/config" \
    -f services/voter-deployment.yaml \
    --includeIPRanges=${IP_RANGES} > \
    voter-deployment-istio.yaml \
    && kubectl apply -f voter-deployment-istio.yaml \
    && rm voter-deployment-istio.yaml
