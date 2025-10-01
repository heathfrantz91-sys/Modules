variable "bucket" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "S3 bucket versioning settings"
  type        = map(bool)
  default     = {
    enabled = false
  }
}

variable "acl" {
  description = "ACL policy"
  type        = string
  default     = "private"
}

variable "object_ownership" {
  description = "Object ownership type (e.g., ObjectWriter, BucketOwnerPreferred, BucketOwnerEnforced)"
  type        = string
  default     = "ObjectWriter"
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}
