kubectl create -f .\namespace.yaml

kubectl create -f .\candidate-deployment.yaml
kubectl create -f .\candidate-service.yaml

kubectl create -f .\election-deployment.yaml
kubectl create -f .\election-service.yaml

kubectl create -f .\voter-deployment.yaml
kubectl create -f .\voter-service.yaml

timeout 120

kubectl create -f .\gateway-deployment.yaml
kubectl create -f .\gateway-service.yaml

timeout 60

kubectl create -f .\ingress.yaml
