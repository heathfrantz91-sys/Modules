variable "name" {
  description = "EC2 instance name (used in tags)"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type (e.g., t3.micro)"
  type        = string
}

variable "key_name" {
  description = "SSH key name to access the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs to attach to the EC2 instance"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of additional tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "cpu_core_count" {
  description = "Number of CPU cores (optional)"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Number of threads per core (optional)"
  type        = number
  default     = null
}

variable "create" {
  description = "Whether to create the EC2 instance"
  type        = bool
  default     = true
}
