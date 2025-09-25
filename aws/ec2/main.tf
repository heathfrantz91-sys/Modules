provider "aws" {
  region = "us-east-1" # Optional: can be overridden by CLI/env
}

#############################
# Dynamic AMI Selection
#############################

# Select latest Ubuntu 20.04 LTS if ami_id is not provided
data "aws_ami" "default_ubuntu" {
  count       = var.ami_id == "" ? 1 : 0
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

#############################
# EC2 Instance Module
#############################

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.0"

  count         = var.create ? 1 : 0
  name          = var.instance_name
  instance_type = var.instance_type
  ami           = var.ami_id != "" ? var.ami_id : data.aws_ami.default_ubuntu[0].id
  key_name      = var.key_name

  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = merge(
    {
      Name        = var.instance_name
      Environment = var.environment
    },
    var.instance_tags
  )
}
