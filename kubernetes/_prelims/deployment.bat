kubectl create -f .\candidate-deployment.yaml
kubectl create -f .\candidate-service.yaml
sleep 30

kubectl create -f .\voter-deployment.yaml
kubectl create -f .\voter-service.yaml
sleep 60

kubectl create -f .\gateway-deployment.yaml
kubectl create -f .\gateway-service.yaml
sleep 60

kubectl create -f .\client-deployment.yaml
kubectl create -f .\client-service.yaml
sleep 30

kubectl get deployments
kubectl get services
