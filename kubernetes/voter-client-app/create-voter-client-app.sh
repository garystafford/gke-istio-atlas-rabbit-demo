#!/bin/bash

# apply voter client app

kubectl apply -f ./namespace.yaml \
	-f ./client-service.yaml \
	-f ./ingress-istio-client.yaml

IP_RANGES="10.12.0.0/14,10.15.240.0/20"

# client app
istioctl kube-inject –kubeconfig "~/.kube/config" \
  -f ./client-deployment.yaml \
  --includeIPRanges=$IP_RANGES > \
  client-deployment-istio.yaml \
  && kubectl apply -f client-deployment-istio.yaml \
  && rm client-deployment-istio.yaml

	kubectl apply -f ./ingress-istio-client.yaml
