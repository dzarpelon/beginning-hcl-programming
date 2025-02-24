## Terraform

Used to install, manage, configure, and create different versions of the infrastructure (predominatly CLoud) in a consistent manner.

### Unique features:

- Infrastructure as Code
- Have an execution plan
- Can graph the resources
- Enable change automation

### Workflow

- create the "main.tf" definition file
- init the system with "terraform init"
- check the deployment plan "terraform plan"
- apply the deployment "terraform apply"
- when not needed anymore, destroy the environment "terraform destroy"