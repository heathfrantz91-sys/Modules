variable "bucket" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "ACL policy for the S3 bucket"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "object_ownership" {
  description = "Object ownership configuration"
  type        = string
  default     = "ObjectWriter"
}

variable "versioning_enabled" {
  description = "Whether to enable versioning on the bucket"
  type        = bool
  default     = false
}
