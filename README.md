# k8s-cluster-api-openstack-example

Deploy the cluster on Openstack using the Kubernetes cluster-api.

## prerequisite
1. kind(https://kind.sigs.k8s.io)
1. Openstack cluster, QEMU flatcar image(https://github.com/kubernetes-sigs/image-builder)

   <b>NOTE:</b> when you run ```make build-qemu-flatcar```, set ```OEM_ID=openstack```
1. apply Openstack RC to environment variable

## Procedure
1. Apply environment variable
- Run ```source 00_prepare_env.sh```


| Environmnet variable  | Description |
| --------------------- | ----------- |
| CLUSTER_TOPOLOGY | Use ClusterTopology controller to reconciles the managed topology of a cluster  |
| EXP_KUBEADM_BOOTSTRAP_FORMAT_IGNITION | Enable Ignition experimental feature (for Flatcar Container Linux) |
| CLUSTER_NAME | Content Cell  |
| KUBERNETES_VERSION |   |
| OPENSTACK_CLOUD |   |
| OPENSTACK_CLOUD_CACERT_B64 |   |
| OPENSTACK_CLOUD_PROVIDER_CONF_B64 |   |
| OPENSTACK_CLOUD_YAML_B64 |   |
| OPENSTACK_CONTROL_PLANE_MACHINE_FLAVOR |   |
| OPENSTACK_DNS_NAMESERVER |   |
| OPENSTACK_EXTERNAL_NETWORK_ID |   |
| OPENSTACK_FAILURE_DOMAIN |   |
| OPENSTACK_FLATCAR_IMAGE_NAME |   |
| OPENSTACK_NODE_MACHINE_FLAVOR |   |
| OPENSTACK_SSH_KEY_NAME |   |
| CONTROL_PLANE_MACHINE_COUNT |   |
| WORKER_MACHINE_COUNT |   |



1.
1.
1.
1.
1.
1.
1.
1.
1.
