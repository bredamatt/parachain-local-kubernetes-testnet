# parachain-local-kubernetes-testnet

Given a Kubernetes cluster with a monitoring stack, how can I deploy a small testnet with 2 validators, and 1 collator into the cluster? 
This would be useful for iterative deployments of parachains and testnets, where changes are made from an observability tooling perspective, such as:

- tracing
- monitoring 
- profiling

## performance

Note that performance may not be representative of clusters running on cloud providers when running locally in a `kind` cluster, for example.
