REM Deploy NGINX Ingress Controller

kubectl create -f .\namespace.yaml

kubectl create -f .\tcp-services-configmap.yaml
kubectl create -f .\udp-services-configmap.yaml
kubectl create -f .\configmap.yaml

REM Replica Set and Service deployed together 
kubectl create -f .\default-backend.yaml

kubectl create -f .\nginx-ingress-controller.yaml
kubectl create -f .\nginx-ingress-controller-service.yaml
