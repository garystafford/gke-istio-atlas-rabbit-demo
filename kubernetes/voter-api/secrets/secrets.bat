REM Create Secrets

kubectl create -f ..\namespace.yaml

kubectl create ^
	-f .\azure-cosmosdb-election-secret.yaml ^
	-f .\azure-cosmosdb-candidate-secret.yaml ^
	-f .\azure-cosmosdb-voter-secret.yaml ^
	-f .\azure-service-bus-secret.yaml ^
 	-f .\tls-api-voter-demo-secret.yaml
