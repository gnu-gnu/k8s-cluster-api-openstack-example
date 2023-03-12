#!/bin/sh
echo "applied configuration"
export
clusterctl generate cluster capi-quickstart --from https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-openstack/main/templates/cluster-template-external-cloud-provider-flatcar.yaml | kubectl apply -f -
