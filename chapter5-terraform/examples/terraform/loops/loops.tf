/*
 For each 'num' in subnet_numbers, generate a subnet using the base CIDR block 'data.aws_vpc.hclbook.cidr_block'.
 Each subnet will have an 8-bit subnet mask added to the original CIDR block and use 'num' as the subnet index. */
cidr_blocks = [
    for num in var.subnet_numbers:
    cidrsubnet(data.aws_vpc.hclbook.cidr_block, 8, num)
]

// For each key-value pair (name, cidr) in var.subnets, create an AWS subnet resource.
resource "aws_subnet" "example" {
    for_each = var.subnets

    vpc_id     = data.aws_vpc.main.id
    cidr_block = each.value
}

// Create 'var.instance_count' number of EC2 instances.
resource "aws_instance" "example" {
    count = var.instance_count

    ami           = "ami-123456"
    instance_type = "t2.micro"
    tags = {
      Name = "instance-${count.index}"
    }
}

//Dynamic block example.  For each ingress rule in var.ingress_rules, create a security group rule dynamically.
resource "aws_security_group" "example" {
    name        = "example-sg"
    description = "Example security group"

    dynamic "ingress" {
        for_each = var.ingress_rules

        content {
            from_port   = ingress.value.from
            to_port     = ingress.value.to
            protocol    = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
        }
    }
}