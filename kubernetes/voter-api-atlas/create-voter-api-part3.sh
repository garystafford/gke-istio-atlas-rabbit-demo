#!/bin/bash

# apply voter api resources part 3

# pods
kubectl apply \
  -f ./services/election-deployment.yaml \
  -f ./services/candidate-deployment.yaml \
  -f ./services/voter-deployment.yaml
