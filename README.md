# k8s-cluster-api-openstack-example

Deploy the cluster on Openstack using the Kubernetes cluster-api.

## prerequisite
1. kind(https://kind.sigs.k8s.io/docs/user/quick-start)
1. clusterctl(https://cluster-api.sigs.k8s.io/user/quick-start.html#install-clusterctl)
1. Openstack cluster, QEMU flatcar image(https://github.com/kubernetes-sigs/image-builder)

   <b>NOTE:</b> when you run ```make build-qemu-flatcar```, set ```OEM_ID=openstack```
1. apply Openstack RC to environment variable

## Procedure
### Apply environment variable
- Run ```source 00_prepare_env.sh```


| Environmnet variable  | Description |
| --------------------- | ----------- |
| CLUSTER_TOPOLOGY | Use ClusterTopology controller to reconciles the managed topology of a cluster  |
| EXP_KUBEADM_BOOTSTRAP_FORMAT_IGNITION | Enable Ignition experimental feature (for Flatcar Container Linux) |
| CLUSTER_NAME | Kubernetes cluster name, it would be used as prefix of Kubernetes resources  |
| KUBERNETES_VERSION | Kubernetes version |
| OPENSTACK_CLOUD | Openstack Cloud name  |
| OPENSTACK_CLOUD_CACERT_B64 | TLS CA Cert, if you want to use TLS, remove ```tls-insecure``` property in clouds.yaml and cloud.conf  |
| OPENSTACK_CLOUD_PROVIDER_CONF_B64 | BASE64 encoded ```cloud.conf```  |
| OPENSTACK_CLOUD_YAML_B64 | BASE64 encoded ```clouds.yaml```  |
| OPENSTACK_CONTROL_PLANE_MACHINE_FLAVOR | Openstack flavor name  |
| OPENSTACK_DNS_NAMESERVER | DNS server (eg. 8.8.8.8)  |
| OPENSTACK_EXTERNAL_NETWORK_ID | Openstack external network id  |
| OPENSTACK_FAILURE_DOMAIN | nova  |
| OPENSTACK_FLATCAR_IMAGE_NAME | Flatcar container linux image name, it should be built by image-builder with ```OEM_ID=openstack``` |
| OPENSTACK_NODE_MACHINE_FLAVOR | Openstack flavor name  |
| OPENSTACK_SSH_KEY_NAME | Openstack Keypair name. it should be exist in Openstack and username is ```core```  |
| CONTROL_PLANE_MACHINE_COUNT | Number of control plane node |
| WORKER_MACHINE_COUNT | Number of worker node  |

### create openstack keypair
- Before creating openstack keypair, apply Openstack RC file to your environment variable
- Run ```./01_create_openstack_keypair.sh {keypair name}```
  it removes existing keypair in Openstack if exists and create new keypair as given name and generate PEM file

### create kind cluster and initialize open
