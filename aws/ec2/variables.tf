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
  description = "Optional AMI ID (if empty, latest Ubuntu will be used)"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "SSH key pair to attach"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID where instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "instance_tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Environment (dev, qa, prod)"
  type        = string
  default     = "dev"
}

# ✅ CPU options (optional, used by official module)
variable "cpu_core_count" {
  description = "Number of CPU cores for the instance (only supported on compatible instance types). Leave null to skip."
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Threads per core for the instance (only supported on compatible instance types). Leave null to skip."
  type        = number
  default     = null
}

# ✅ Optional volume size
variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 8
}

# ✅ Optional volume type
variable "root_volume_type" {
  description = "Root volume type (e.g., gp2, gp3, io1)"
  type        = string
  default     = "gp3"
}
