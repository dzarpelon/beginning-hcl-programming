# Consul HCL

Consult is a service network solution used to connect and secure services acress different platforms.

Some of its use cases are:

- Service register/discovery
- Health check
- Key/value store
- Securing the service communications
- Support for multiple DCs

## Architecture

Consul is a distributed and high available system.

It is a Cline/server syste with it's main component being the Consul agent.

This agent has to run in all nodes of the Consul cluster with the server agent being part of the quorum for leader election.

The leader replicate the data from the client to the other servers.

The [&#34;gossip protocol&#34;](https://developer.hashicorp.com/consul/docs/architecture/gossip) which creates a pool for all of the agents. Here's a list of the pool purposes:

- No client config needed. Discovery is automatic.
- Failure detection done in a distributed manner.
- All servers are part of a Raft pool, which means they are all eligible to be the leader.

The leader has some extra duties, like:

- processing the query and transaction executed on the cluster.
- same time transactions are replicated to other servers (the "followers")
- All the transaction data is sent to the agents via RPC.
