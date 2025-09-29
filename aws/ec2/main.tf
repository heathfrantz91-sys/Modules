provider "aws" {
  region = "us-east-1" # Optional: can be overridden by CLI/env
}

# Automatically select latest Ubuntu AMI if none provided
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

  owners = ["099720109477"] # Canonical (Ubuntu)
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.0"

  count = var.create ? 1 : 0

  name          = var.name
  instance_type = var.instance_type
  ami           = var.ami != "" ? var.ami : data.aws_ami.default_ubuntu[0].id
  key_name      = var.key_name

  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  # ✅ Only set CPU options if both values are provided
  dynamic "cpu_options" {
    for_each = var.cpu_core_count != null && var.cpu_threads_per_core != null ? [1] : []
    content {
      core_count       = var.cpu_core_count
      threads_per_core = var.cpu_threads_per_core
    }
  }

  tags = merge(
    {
      "Name" = var.name
    },
    var.instance_tags
  )
}
