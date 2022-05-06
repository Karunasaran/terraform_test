resource "aws_instance" "ec2instance" {
  ami                         = "ami-045172f6474cf8d8a"
  instance_type               = var.instancetype
  subnet_id                   = data.aws_subnet.mysubnet.id
  associate_public_ip_address = var.publicip
  availability_zone           = var.az
  tags                        = var.tag
  vpc_security_group_ids      = var.securitygroups
  key_name                    = "Jenkins"

}

data "aws_subnet" "mysubnet" {
  availability_zone = var.az
  filter {
    name   = "vpc-id"
    values = [var.vpcid]
  }
}
