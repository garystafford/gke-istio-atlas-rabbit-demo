REM apply NGINX Ingress Controller

kubectl apply -f .\namespace.yaml

kubectl apply -f .\rbac.yaml

kubectl apply ^
  -f .\tcp-services-configmap.yaml ^
  -f .\udp-services-configmap.yaml ^
  -f .\configmap.yaml

kubectl apply -f .\default-backend.yaml

REM wait for default-backend to come up fully
timeout 30

kubectl apply  ^
  -f .\nginx-ingress-controller.yaml ^
  -f .\nginx-ingress-controller-service.yaml
