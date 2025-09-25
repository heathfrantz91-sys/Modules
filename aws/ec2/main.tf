provider "aws" {
  region = "us-east-1"
}

# Optional: select latest Ubuntu AMI if none provided
data "aws_ami" "default_ubuntu" {
  count       = var.ami == "" ? 1 : 0
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.0"

  name          = var.name
  instance_type = var.instance_type
  ami           = var.ami != "" ? var.ami : data.aws_ami.default_ubuntu[0].id
  key_name      = var.key_name

  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = merge(
    { "Name" = var.name },
    var.instance_tags
  )

  count = var.create ? 1 : 0
}
