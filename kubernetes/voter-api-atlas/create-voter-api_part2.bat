REM apply Voter API Resources Part 2

REM Services
kubectl apply ^
  -f .\services\election-service.yaml ^
  -f .\services\candidate-service.yaml ^
  -f .\services\voter-service.yaml

REM Istio Ingress
kubectl create -f .\ingress-istio.yaml
