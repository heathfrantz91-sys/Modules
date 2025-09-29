variable "name" {
  description = "EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch EC2"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to instance"
  type        = map(string)
  default     = {}
}

variable "cpu_core_count" {
  description = "Number of CPU cores, optional"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Threads per CPU core, optional"
  type        = number
  default     = null
}

variable "create" {
  description = "Whether to create the EC2 instance"
  type        = bool
  default     = true
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}
