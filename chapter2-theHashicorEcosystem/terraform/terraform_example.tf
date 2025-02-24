provider "aws" {
  profile = "default"
  region = "eu-central-1"
}


resource "aws_instance" "terraform_example" {
  ami = "downloading-2757f6631"
  instance_type = "t2.micro"
}