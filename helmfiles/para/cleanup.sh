#!/bin/bash

helmfile delete
kubectl delete pvc relaychain-data-alice-2k-node-0 chain-data-alice-2k-node-0 -n rococo
