# Jaeger-all-in-one

There are scenarios where you may want to check your spans and traces in a more lightweight and speedy way without having the entire tempo-distributed stack deployed. To do this, you can use the `jaegertracing/all-in-one` container image, and start it up as follows:

```
$ docker pull jaegertracing/all-in-one
$ docker run -d --name jaeger \
  -p 16686:16686 \                                                                                                                                                                                           ✔  15:02:59 
  -p 6831:6831/udp \
  -p 6832:6832/udp \
  -p 5778:5778 \
  jaegertracing/all-in-one:latest
```

You can then navigate to `localhost:16686` and see the jaeger UI locally.

### Connecting a polkadot node to the local jaeger-ui

This is easily done using zombienet, which allows for a speedy deployment of a local rococo testnet. Any valid zombienet configuration (`.toml`) file would work as long as the extra argument
`--jaeger-agent=127.0.0.1:6831` is passed to the nodes you are interested in evaluating spans for. Please see the included `.toml` for an example.

To then start your zombienet use:

```
$ zombienet -p native spawn znetworks/*.toml
```

