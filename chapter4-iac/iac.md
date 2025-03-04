# Infrastructure as Code (IaC)

## Definition of IaC

> Infrastructure as Code, IaC, is the process to manage and provision computer via machine-readable code

## Advantages of IaC

- Cost reduction
- faster execution whe you release the infrastructure
- Reducing errors during release

## Principles

- Every system must be reproducible
- Every system must be disposable
- Every system must be consistent
- Every business must be repeatable
- The design of the system always changes

## Implementing IaC

- A _definition file_ is needed - used to define every single piece of the infrastructure. [Terraform Example](./examples/tfexample.tf)
- IaC allows for continuous testing
- Large changes can be broken down into smaller pieces, reducing downtime.
- Phases of IaC
  - Design -> implementation -> versioning -> testing -> release

## Tools for IaC

- All IaC processes are based on automation principles. With some basic requirements:
  - Scriptable interface
  - support for CLI
  - have external configuration file
  - Reliability - "to consistently deliver the same results"
- The scripts characteristics must be:
  - Reliable - return the same result every time
  - Input/Output check - it needs to check the output for each input with a clear message returned
  - Clear failure - clear failure conditions must be on the script
  - Parameterized - must accept some paramenters/arguments to configure the execution

## Defining IaC

- Main component is the '_definition file'. [Example Vault definition file](./examples/vault.hcl)_
- One of the main advantages of a definition file is that the file "auto-documents" the infrastructure.

## Releasing IaC

- Some basic patterns for the sactions of a definition file are:

  - provisioning - must respect the following:
    - be on-demand - can be easily rebuilt without undue effort.
    - define things once - every element must be defined once and can be rebuilt n-times
    - be transparent - every element must be easy to read and modify
  - management
  - updating - creation of new piece of software or updating the existing infrastructure.
  - definition

- Two main patterns for releasing a change:

  - pushing - a central node manages the changes and pushes them to the connected clients
  - pulling - the client checks with a central server if there's a change and push it if exists.

## Engineering practices

- Deliver code at an early stage
- Adopt Continuous delivery
- Build high quality code
- Iterate code in small pieces.
- High quality releases
- feedback for each relelase
- expect change

## Improve quality

- Use version control
- Unit test the code
- build a CI (continuous integration)
- comment the code
