#!/bin/sh
TEMPLATE_URL="https://github.com/kubernetes-sigs/cluster-api-provider-openstack/blob/main/templates/cluster-template-external-cloud-provider-flatcar.yaml"
CLUSTER_NAME=${1:-capi-quickstart}
echo "applied configuration"
export
clusterctl generate cluster $CLUSTER_NAME --from $TEMPLATE_URL | kubectl apply -f -
