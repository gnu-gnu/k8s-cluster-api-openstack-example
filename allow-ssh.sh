#!/bin/sh
# NOTE: allow-ssh security group MUST BE exist
openstack server add security group $(kubectl get openstackmachine -o=jsonpath="{.items[*].metadata.name}" -l cluster.x-k8s.io/control-plane) allow-ssh
