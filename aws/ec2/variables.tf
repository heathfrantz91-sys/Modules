variable "create" {
  description = "Whether to create an EC2 instance"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "unknownec2instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "Optional AMI ID. If empty, the latest Ubuntu 20.04 will be used automatically."
  type        = string
  default     = ""
}

variable "key_name" {
  description = "SSH key pair name to attach to the EC2 instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
  default     = []
}

variable "instance_tags" {
  description = "Additional tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Environment (e.g. dev, qa, prod)"
  type        = string
  default     = "dev"
}

variable "cpu_core_count" {
  description = "Number of CPU cores (only for compatible instance types; set null to skip)"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Number of threads per core (only for compatible instance types; set null to skip)"
  type        = number
  default     = null
}
