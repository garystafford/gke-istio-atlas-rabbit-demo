REM apply Voter API Resources Part 1

REM Namespace
kubectl apply -f .\namespace.yaml

REM Secrets
kubectl apply ^
	-f .\secrets\mongodb-atlas-election-secret.yaml ^
	-f .\secrets\mongodb-atlas-candidate-secret.yaml ^
	-f .\secrets\mongodb-atlas-voter-secret.yaml ^
	-f .\secrets\azure-service-bus-secret.yaml ^
 	-f .\secrets\tls-api-voter-demo-secret.yaml
