#!/bin/bash

# apply voter api resources part 2

# services
kubectl apply \
  -f ./services/election-service.yaml \
  -f ./services/candidate-service.yaml \
  -f ./services/voter-service.yaml

# istio ingress
kubectl apply -f ./other/ingress-istio.yaml

# dashboard rbac
kubectl apply -f ./other/dashboard-admin.yaml
