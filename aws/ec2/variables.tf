variable "create" {
  description = "Whether to create an EC2 instance"
  type        = bool
  default     = true
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
  type        = string
  default     = ""
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "instance_tags" {
  description = "Additional tags to apply to the instance"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Environment name (e.g. dev, qa, prod)"
  type        = string
  default     = "dev"
}
