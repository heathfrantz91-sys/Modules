resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  tags                   = var.tags

  cpu_core_count         = var.cpu_core_count
  cpu_threads_per_core   = var.cpu_threads_per_core
}
