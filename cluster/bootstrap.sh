#!/bin/sh
set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# create registry container unless it already exists
reg_name='kind-registry'
reg_port='5001'


if [ "$(docker inspect -f '{{.State.Running}}' "${reg_name}" 2>/dev/null || true)" != 'true' ]; then
  docker run \
    -d --restart=always -p "127.0.0.1:${reg_port}:5000" --name "${reg_name}" \
    registry:2
fi

# Check if cluster exists
if [ "$(kind get clusters | grep kind 2>/dev/null)" == 0 ]; then
  echo "kind cluster exists"
  exit
else
# create a cluster with the local registry enabled in containerd
  kind create cluster --config=${SCRIPTPATH}/config/cluster.yaml

  # connect the registry to the cluster network if not already connected
  if [ "$(docker inspect -f='{{json .NetworkSettings.Networks.kind}}' "${reg_name}")" = 'null' ]; then
    docker network connect "kind" "${reg_name}"
  fi

  # Document the local registry
  # https://github.com/kubernetes/enhancements/tree/master/keps/sig-cluster-lifecycle/generic/1755-communicating-a-local-registry
  kubectl apply -f ${SCRIPTPATH}/config/configmap.yaml
fi
