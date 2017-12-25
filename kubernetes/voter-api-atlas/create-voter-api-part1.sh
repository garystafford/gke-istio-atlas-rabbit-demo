#!/bin/bash

# apply voter api resources part 1

# namespace
kubectl apply -f ./other/namespace.yaml

# secrets
kubectl apply \
	-f ./secrets/mongodb-atlas-election-secret.yaml \
	-f ./secrets/mongodb-atlas-candidate-secret.yaml \
	-f ./secrets/mongodb-atlas-voter-secret.yaml \
	-f ./secrets/rabbitmq-connection-string-secret.yaml \
 	-f ./secrets/istio-ingress-certs-secret.yaml
