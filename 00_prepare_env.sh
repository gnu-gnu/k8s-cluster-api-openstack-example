# apply it with 'source' command please 
# openstack provider conf
export CLUSTER_TOPOLOGY=true
export EXP_KUBEADM_BOOTSTRAP_FORMAT_IGNITION=true

# cluster api conf
export CLUSTER_NAME=capi
export KUBERNETES_VERSION=v1.23.15
export OPENSTACK_CLOUD=openstack
export OPENSTACK_CLOUD_CACERT_B64=Cg==
export OPENSTACK_CLOUD_PROVIDER_CONF_B64=$(cat ./templates/cloud.conf.template|envsubst|base64 -w0)
export OPENSTACK_CLOUD_YAML_B64=$(cat ./templates/clouds.yaml.template|envsubst|base64 -w0)
export OPENSTACK_CONTROL_PLANE_MACHINE_FLAVOR=m1.medium
export OPENSTACK_DNS_NAMESERVERS=8.8.8.8
export OPENSTACK_EXTERNAL_NETWORK_ID=$(openstack network list --external -f value -c ID)
export OPENSTACK_FAILURE_DOMAIN=nova
export OPENSTACK_FLATCAR_IMAGE_NAME=flatcar-stable-3374.2.5-kube-v1.23.15
export OPENSTACK_NODE_MACHINE_FLAVOR=m1.medium
export OPENSTACK_SSH_KEY_NAME=k8s
export CONTROL_PLANE_MACHINE_COUNT=1
export WORKER_MACHINE_COUNT=3
export OPENSTACK_FAILURE_DOMAIN=nova
