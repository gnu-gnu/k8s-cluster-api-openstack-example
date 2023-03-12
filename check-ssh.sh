#!/bin/sh
NAME=allow-ssh
if openstack security group show $NAME 1> /dev/null 2> /dev/null; then
    echo "create group exist"
  else
    echo "not exist, create allow-ssh security group"
    openstack security group create $NAME --description allow-ssh
    openstack security group rule create $NAME --protocol tcp --dst-port 22:22 --remote-ip 0.0.0.0/0
fi
