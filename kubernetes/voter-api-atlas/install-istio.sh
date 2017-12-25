#!/bin/bash

# install istio, add-ons, and roles
# https://cloud.google.com/kubernetes-engine/docs/tutorials/istio-on-gke

# export ISTIO_HOME="~/Documents/Personal/Google_Cloud_Article/istio-0.4.0"
export ISTIO_HOME="/Applications/istio-0.4.0"

# required dashboard and istio roles
# kubectl get clusterrolebindings
# Error from server (Forbidden): error when creating ".../istio-auth.yaml":
kubectl apply \
  -f ./other/kube-system-cluster-admin.yaml \
  -f ./other/cluster-admin-binding.yaml

# istio
kubectl apply \
  -f ${ISTIO_HOME}/install/kubernetes/istio-auth.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/istio-initializer.yaml

# add-ons
kubectl apply \
  -f ${ISTIO_HOME}/install/kubernetes/addons/prometheus.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/grafana.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/servicegraph.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/zipkin.yaml \
  -f ${ISTIO_HOME}/install/kubernetes/addons/zipkin-to-stackdriver.yaml

# configured properly
  # -f ./other/zipkin-to-stackdriver-creds.yaml
  # -f ./other/zipkin-to-stackdriver.yaml
