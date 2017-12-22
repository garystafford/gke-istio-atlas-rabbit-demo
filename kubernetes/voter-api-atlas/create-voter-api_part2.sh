#!/bin/bash

# apply voter api resources part 2

# services
kubectl apply \
  -f ./services/election-service.yaml \
  -f ./services/candidate-service.yaml \
  -f ./services/voter-service.yaml

# voter api istio ingress
kubectl apply -f ./other/ingress-istio.yaml

# dashboard rbac
# kubectl apply -f ./other/dashboard-admin.yaml
kubectl create clusterrolebinding \
  --user system:serviceaccount:kube-system:default \
  kube-system-cluster-admin --clusterrole cluster-admin
