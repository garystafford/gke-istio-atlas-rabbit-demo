#!/bin/bash

# apply voter api resources part 2

# pods
kubectl apply \
  -f ./services/election-deployment.yaml \
  -f ./services/candidate-deployment.yaml \
  -f ./services/voter-deployment.yaml

# services
kubectl apply \
  -f ./services/election-service.yaml \
  -f ./services/candidate-service.yaml \
  -f ./services/voter-service.yaml

# ingress
kubectl apply -f ./other/ingress-istio.yaml
