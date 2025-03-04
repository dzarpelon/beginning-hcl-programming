resource "aws_instance" "hcl_example" {
  ami = "ami-21f78e11"
  availability_zone = "eu-central-1"
  instance_type = "a1.medium"
  tags = {
    Name = "HCL-EC2"
  }
}

resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "$eu-central-1"
  size = 1
  tags = {
    Name = "EBS-volume"
  }
}

resource "aws_volume_attachment" "hcl_vol_attachment" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.hcl_example.id
}