provider "aws" {
  region = "eu-central-1"
}

# Create a VPC 
resource "aws_vpc" "hclbookvpc" {
  cidr_block = var.ip_range //the 'ip_range' variable is used here. It's declared on the 'variables.tf' file
}