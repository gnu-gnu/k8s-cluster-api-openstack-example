#/bin/sh
helm repo add cpo https://kubernetes.github.io/cloud-provider-openstack
helm repo update
helm upgrade --install --kubeconfig kube.config openstack-ccm cpo/openstack-cloud-controller-manager --values ./conf/cloud-ccm.yaml
