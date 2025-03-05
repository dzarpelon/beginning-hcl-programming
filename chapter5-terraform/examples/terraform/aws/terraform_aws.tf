provider "aws" {
  region = "eu-central-1"
}

# Create a VPC
resource "aws_vpc" "hclbookvpc" {
  cidr_block = "20.0.0.0/16"
}

