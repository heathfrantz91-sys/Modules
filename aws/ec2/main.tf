provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "git::https://github.com/heathfrantz91-sys/Git-hub-IAC-pipelines"

  ami                    = var.ami
  key_name               = var.key_name
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags                   = { Name = var.name }  
}
