module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  count = var.create ? 1 : 0

  name = var.instance_name

  instance_type          = var.instance_type
  ami                    = var.ami_id
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = merge(
    {
      "Name" = var.instance_name
    },
    var.instance_tags
  )
}
