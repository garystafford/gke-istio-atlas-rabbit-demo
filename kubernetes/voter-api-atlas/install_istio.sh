#!/bin/bash

# install istio
# https://cloud.google.com/kubernetes-engine/docs/tutorials/istio-on-gke

export ISTIO_HOME=~/Documents/Personal/Google_Cloud_Article/istio-0.4.0/

kubectl create clusterrolebinding cluster-admin-binding \
  --user="$(gcloud config get-value core/account)" \
  --clusterrole=cluster-admin

kubectl apply \
  -f ${ISTIO_HOME}/install/kubernetes/istio-auth.yaml

# add-ons
kubectl apply \
  -f ${ISTIO_HOME}/install/kubernetes/addons/prometheus.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/grafana.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/servicegraph.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/zipkin.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/zipkin-to-stackdriver.yaml
