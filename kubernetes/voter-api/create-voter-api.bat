REM Create Voter API Resources

kubectl create -f .\namespace.yaml

REM Secrets
kubectl create ^
	-f .\secrets\azure-cosmosdb-election-secret.yaml ^
	-f .\secrets\azure-cosmosdb-candidate-secret.yaml ^
	-f .\secrets\azure-cosmosdb-voter-secret.yaml ^
	-f .\secrets\azure-service-bus-secret.yaml ^
 	-f .\secrets\tls-api-voter-demo-secret.yaml

REM Services
kubectl create ^
  -f .\services\candidate-deployment.yaml ^
  -f .\services\candidate-service.yaml ^
  -f .\services\election-deployment.yaml ^
  -f .\services\election-service.yaml ^
  -f .\services\voter-deployment.yaml ^
  -f .\services\voter-service.yaml

REM wait for services to come up fully
timeout 120

kubectl create -f .\ingress.yaml
