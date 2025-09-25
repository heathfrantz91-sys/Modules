variable "create" {
  description = "Whether to create an EC2 instance"
  type        = bool
  default     = true
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = <<EOT
(Optional) Specific AMI ID to use. 
If not provided, the latest Ubuntu 20.04 LTS AMI will be selected automatically.
EOT
  type    = string
  default = ""
}

variable "key_name" {
  description = "SSH key name to attach to the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
  default     = []
}

variable "instance_tags" {
  description = "Additional tags to assign to the instance"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Environment name (e.g., dev, qa, prod)"
  type        = string
  default     = "dev"
}
