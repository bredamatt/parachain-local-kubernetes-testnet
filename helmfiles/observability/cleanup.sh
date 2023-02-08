#!/bin/bash

helmfile delete
k delete pvc -n observability data-cassandra-0 data-cassandra-1 data-cassandra-2
