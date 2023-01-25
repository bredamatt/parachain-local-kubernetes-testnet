# local cluster

This creates a `kind` cluster locally. Please see `config/` for how this cluster is configured.

## Components

`kind` uses `docker` to spin up containers and a kubernetes network locally.

### Containers

- 3x worker nodes with 10Gb RAM each
- 1x control plane node with 2Gb RAM

### Registry

A container registry gets created at the same time
