## Vagrant

Vagrant is a tool that build VMs from a file (the "vagrantfile") for multiple different Hypervisors with a single syntax.

You can use any of the available Vagrant Boxes in [VagrantCloud](https://portal.cloud.hashicorp.com/vagrant/discover) and customize it with the vagrantfile.

The process is the following

- Download the image:
  `vagrant init box parameters `
- Spin the VM up
  `vagrant up`
- Connect to the vm
  `vagrant ssh`
- Destroy the VM when finished.
  `vagrant destroy`
