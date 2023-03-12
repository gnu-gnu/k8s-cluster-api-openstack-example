#!/bin/sh
echo '$ kubectl get cluster'
kubectl get cluster
echo '$ clusterctl describe cluster capi-quickstart'
clusterctl describe cluster capi-quickstart
echo '$ kubectl get kubeadmcontrolplance'
kubectl get kubeadmcontrolplane
