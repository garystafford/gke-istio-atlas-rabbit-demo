REM apply Voter API Resources Part 2

REM Services
kubectl apply ^
  -f .\services\candidate-deployment.yaml ^
  -f .\services\candidate-service.yaml ^
  -f .\services\election-deployment.yaml ^
  -f .\services\election-service.yaml ^
  -f .\services\voter-deployment.yaml ^
  -f .\services\voter-service.yaml

REM istioctl kube-inject -f .\services\candidate-deployment.yaml
REM istioctl kube-inject -f .\services\election-deployment.yaml
REM istioctl kube-inject -f  .\services\voter-deployment.yaml

REM wait for services to come up fully
timeout 120

REM Ingress
REM kubectl apply -f .\ingress.yaml

REM Istio Ingress
kubectl create -f .\ingress-istio.yaml
