#!/bin/sh
cat ./templates/cloud-ccm.yaml.template | envsubst > ./conf/cloud-ccm.yaml
echo "cloud-ccm.yaml created"
