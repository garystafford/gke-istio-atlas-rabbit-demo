kubectl create -f .\tcp-services-configmap.yaml
kubectl create -f .\udp-services-configmap.yaml
kubectl create -f .\configmap.yaml
kubectl create -f .\default-backend.yaml # file also contains service
kubectl create -f .\nginx-ingress-controller.yaml
kubectl create -f .\nginx-ingress-controller-service.yaml
