#!/bin/bash
# apply it with source command please.
rm -f kube.config
clusterctl get kubeconfig capi-quickstart > kube.config
chmod 400 $PWD/kube.config
export KUBECONFIG="$PWD/kube.config"
