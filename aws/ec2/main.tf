variable "name" {}
variable "instance_type" {}
variable "key_name" {}
variable "ami" {}
variable "subnet_id" {}
variable "vpc_security_group_ids" {}
variable "tags" {
  type = map(string)
}
variable "cpu_core_count" {
  type    = number
  default = null
}
variable "cpu_threads_per_core" {
  type    = number
  default = null
}
variable "create" {
  type    = bool
  default = true
}

resource "aws_instance" "this" {
  count = var.create ? 1 : 0

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = var.tags

  # ✅ Only set CPU options if both values are provided
  dynamic "cpu_options" {
    for_each = var.cpu_core_count != null && var.cpu_threads_per_core != null ? [1] : []
    content {
      core_count       = var.cpu_core_count
      threads_per_core = var.cpu_threads_per_core
    }
  }
}
