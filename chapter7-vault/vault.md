# Vault HCL

Vault is used to securely manage secrets.
In this context "secrets" mean anything we want to protect such as:

- passwords
- API keys
- certficates
- everything else that needs protection

Some of its use cases are:

- Secure and store secrets
- Dynamic secrets
- Data encryption
- Secret lease and renewal
- Secret revocation

Vault needs to be "unsealed" before it's used and needs at least 3 different unseal keys.

Secrets can be created either via CLI or UI

## Secrets Engine

A Secrets Engine is responsible for managing secrets. They store data, generates a password or encryption data.

We can have multiple engines for different usages, they are totally isolated from one another.

Engines need to be enabled before they are usable.

We have three families of engines, each further divided on subtypes

- General
  - KV
  - PKI certificate
  - SSH
  - Transit - Used for data in transit
  - TOTP - Used for temporary secrets
- Cloud
  - Active Directory
  - Password rotation
  - Service account
  - AliCloud
  - AWS
  - Google cloud
  - Azure
- Infrastructure
  - Consul
  - Database
  - Nomad
  - Rabbit MQ

## Writing HCL Policy

The policy is what defines the authorization on the path and authorize a specific user operation types.

Here some [examples](./examples/) of HCL defined policies

The capabilities that can be applied are tied to an HTTP verb. Here's that mapping

| Capability | Verb     |
| ---------- | -------- |
| Create     | POST/PUT |
| Read       | GET      |
| Update     | POST/PUT |
| Delete     | DELETE   |
| List       | LIST     |

In addition to the we have also "sudo" - used to access root protected paths - and deny - which disallow access

Policies are addictive with each capability adding to ano another.

The DENY capability override any and all other policies and deny access to the full path
