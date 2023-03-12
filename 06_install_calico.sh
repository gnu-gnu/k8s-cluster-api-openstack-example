#!/bin/sh
curl -L https://raw.githubusercontent.com/projectcalico/calico/v3.24.1/manifests/calico.yaml | kubectl --kubeconfig $PWD/kube.config apply -f -
