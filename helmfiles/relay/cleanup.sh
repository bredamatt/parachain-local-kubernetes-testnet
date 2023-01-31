#!/bin/bash

helmfile delete
kubectl delete pvc chain-data-validator-alice-node-0 chain-data-validator-bob-node-0 -n rococo
