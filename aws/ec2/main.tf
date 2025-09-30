resource "aws_instance" "this" {
  count = var.create ? 1 : 0

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids != null ? var.vpc_security_group_ids : var.security_group_ids
  tags                   = var.tags

  # Dynamic CPU options inside the module
  dynamic "cpu_options" {
    for_each = var.cpu_core_count != null && var.cpu_threads_per_core != null ? [1] : []
    content {
      core_count       = var.cpu_core_count
      threads_per_core = var.cpu_threads_per_core
    }
  }
}
