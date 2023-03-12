#!/bin/sh
kind create cluster
clusterctl init --infrastructure openstack
