# Terraform HCL

## DevOps methodology pillars

- Continuous integration (CI)
- Continuous delivery (CD)
- Agile methodoloies
- Infrastructure as Code (IaC)

An important improvement of DevOps is to reduce failure during the release because of CI/CD.

DevOps Culture can be summarized by:
- Culture
- Automation
- Measurement
- Sharing

## IaC in practice
 
 Here's an [example](./examples/general-purpose-script.sh) of a general purpose script.

 This types of scripts can be easy at the start but at the same time are complex.  

 If we needed to configure one specific environment they are fine, but imagine we need to use them on multiple OS/Cloud types. We would need multiple different versions of the same script.

## Configuration management tools
Configuration Management tools help on simply describing the config we want on the system. So no general purpose scripts like that are needed. 

Examples of Configuration Management tools are:
- Puppet
- Chef
- Ansible

Here's an [example](./examples/chef.rb) of a Chef script.

It might seem bigger than the general purpose script, but it does not contain reference to any specific system. So it can be run pretty much anywhere with no changes.

### Configuration tools advantages:

- Code conventions: helps better manage the Code
- Reusability: same script can be reused in different platforms without any changes
- Multi-server use: the same script can be used on multiple type of servers.

## Templating tools

Templating tools create images of the server and release it to all servers in one shot. Some examples of such tools are:
- Packer
- Docker
- Vagrant

There are two major categories of these tools:

- Virtual Machines
- Containers

## Server provisioning tools

To deploy servers in IaC it's important to use a provisioning tool. Examples of those are:

- Terraform
- Cloudform

These tools create the server itself and not just it, but the entire structure needed by it. Like load-balancers, databse, firewall, IAM polices and any other aspect of server creation. 

Here's an [example](./examples/terraform/gcp/terraform_gcp.tf) of a Terraform file creating a basic GCP structure.

## Terraform

An example of Terraform deploying in AWS is [here](./examples/terraform/aws/terraform_aws.tf).

### Variables

Variables are configured on a file "variables.tf". Here's an [example](./examples/terraform/variables/terraform_aws_variables.tf) of its usage.

We can add variables values in two ways:

- Via CLI: with the "-var" parameter (terraform apply -var ip_range="10.0.0.0/16" )
- Using a file: This file can be named in two ways "terraform.tfvars" or "name.auto.tfvars" with the prefered way be the later.

## Loops

There are several types of loops we can use to iterate over collections such as lists, maps, and sets.

Here some examples of loop types:

- "for" loop: used to create a new list, map or set.
- "for_each" loop:  used to iterate over a map or set to dynamically create resources, modules, or inline block
- "count" loop: used to create multiple instances of a resource or module by specifying the desired number of repetitions.
- Dynamic block: used to generate repeated nested blocks within a resource by iterating over a list or map.
Some [example](./examples/terraform/loops/) of the loops

## Advanced HCL and Terraform Parsing

As Terraform is written in the "Go" language, it is possible to use that language to extend our program flexibility.

Here's an [example](./examples/terraform/advancedHCL_and_parsing/) of a GO program that define some structures used to define the service and constraints.