#!/bin/bash

cd para && helmfile delete && cd ..
cd relay && helmfile delete && cd ..
cd observability && helmfile delete && cd ..
kubectl delete pvc data-cassandra-0 data-cassandra-1 data-cassandra-2 -n observability
kubectl delete namespace observability
kubectl delete pvc chain-data-alice-2k-node-0 chain-data-validator-alice-node-0 chain-data-validator-bob-node-0 relaychain-data-alice-2k-node-0 -n rococo
kubectl delete namespace rococo
kubectl delete namespace observability
