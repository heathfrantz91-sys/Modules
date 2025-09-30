variable "name" {
  description = "EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Primary list of security group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of tags to apply to the instance"
  type        = map(string)
  default     = {}
}

variable "cpu_core_count" {
  description = "Number of CPU cores (optional)"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Threads per core (optional)"
  type        = number
  default     = null
}

variable "create" {
  description = "Whether to create the EC2 instance"
  type        = bool
  default     = true
}

variable "security_group_ids" {
  description = "Fallback list of security group IDs (used if vpc_security_group_ids is empty)"
  type        = list(string)
  default     = []
}
