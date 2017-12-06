REM Deploy Voter API

REM kubectl create -f .\namespace.yaml

kubectl create -f .\candidate-deployment.yaml
kubectl create -f .\candidate-service.yaml

kubectl create -f .\election-deployment.yaml
kubectl create -f .\election-service.yaml

kubectl create -f .\voter-deployment.yaml
kubectl create -f .\voter-service.yaml

timeout 120

REM kubectl create -f .\gateway-deployment.yaml
REM kubectl create -f .\gateway-service.yaml

kubectl create -f .\ingress.yaml
