variable "name" {
  description = "EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
<<<<<<< HEAD
=======
}

variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
>>>>>>> f740396 (update)
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
<<<<<<< HEAD
  description = "Subnet ID to launch EC2"
=======
  description = "Subnet ID where the instance will be launched"
>>>>>>> f740396 (update)
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "tags" {
<<<<<<< HEAD
  description = "Tags to apply to instance"
=======
  description = "Map of tags to apply to the instance"
>>>>>>> f740396 (update)
  type        = map(string)
  default     = {}
}

variable "cpu_core_count" {
<<<<<<< HEAD
  description = "Number of CPU cores, optional"
=======
  description = "Number of CPU cores (optional)"
>>>>>>> f740396 (update)
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
<<<<<<< HEAD
  description = "Threads per CPU core, optional"
  type        = number
  default     = null
}

variable "create" {
  description = "Whether to create the EC2 instance"
  type        = bool
  default     = true
=======
  description = "Threads per core (optional)"
  type        = number
  default     = null
>>>>>>> f740396 (update)
}
