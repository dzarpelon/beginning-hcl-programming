# We can have objects and nested objects

## This example has an object provider that has a name "aws" with the value "description = aws"
provider "aws" {
    description = "AWS Server"
}

## we can create variables with that syntax as well:

variable "provider" {
    name = "AWS"
}