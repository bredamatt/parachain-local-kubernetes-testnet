# parachain-local-kubernetes-testnet

Given a Kubernetes cluster with a monitoring stack, how can I deploy a small testnet with 2 validators, and 1 collator into the cluster and observe it locally? 
This would be useful for iterative deployments of parachains and testnets, where changes are made from an observability tooling perspective, such as:

- tracing
- monitoring 
- profiling

to mention a few.

## approach

There are two approaches to bootstrap a network in such an environment:

- using zombienet (preferred)
- deploying using the polkadot helmcharts (requires re-generating chainspecs for different network configurations)

## performance

Note that performance may not be representative of clusters running on cloud providers when running locally in a `kind` cluster, given `jemalloc` and QEMU.


