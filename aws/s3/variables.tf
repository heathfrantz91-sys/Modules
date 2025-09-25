variable "bucket" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "S3 bucket versioning settings"
  type        = map(bool)
  default     = { enabled = false }
}

variable "acl" {
  description = "ACL policy"
  type        = string
  default     = "private"
}

variable "control_object_ownership" {
  description = "Object ownership setting"
  type        = bool
  default     = true
}

variable "object_ownership" {
  description = "Object ownership type"
  type        = string
  default     = "ObjectWriter"
}
