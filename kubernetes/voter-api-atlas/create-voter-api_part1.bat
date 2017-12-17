REM apply Voter API Resources Part 1

REM Namespace
kubectl apply -f .\namespace.yaml

REM Secrets
kubectl apply ^
	-f .\secrets\azure-cosmosdb-election-secret.yaml ^
	-f .\secrets\azure-cosmosdb-candidate-secret.yaml ^
	-f .\secrets\azure-cosmosdb-voter-secret.yaml ^
	-f .\secrets\azure-service-bus-secret.yaml ^
 	-f .\secrets\istio-ingress-certs.yaml
